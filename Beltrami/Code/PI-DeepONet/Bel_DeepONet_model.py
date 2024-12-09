import os
os.environ["CUDA_VISIBLE_DEVICES"] = '0'
os.environ["TF_CPP_MIN_LOG_LEVEL"] = '3'
cdir = os.getcwd()
os.chdir(cdir)
import tensorflow as tf
from tensorflow import keras
from keras import layers
import wandb
import numpy as np
import pandas as pd

from Bel_DeepONet_Pde import PdeModel
from utils import get_ibc_and_inner_data

np.random.seed(1234)
tf.random.set_seed(1234)

# Data PreProcessing
grid_size = [64, 64, 20]
init_samples = 500
bound_points = 250
domain_samples = 5000
sensor_samples = 20
train_nue = [1 / 10, 1 / 50, 1 / 100]

(xd, yd, td, xb, yb, tb, ub, vb, pb,
 xbc_in, ybc_in, tbc_in, ubc_in, vbc_in, pbc_in,
 xbc_b, ybc_b, tbc_b, ubc_b, vbc_b, pbc_b, nue_d, sen_data) = get_ibc_and_inner_data(start=[-1, -1, 0],
                                                                                     stop=[1., 1., 1.],
                                                                                     init_samples=init_samples,
                                                                                     bound_points=bound_points,
                                                                                     domain_samples=domain_samples,
                                                                                     sensor_samples=sensor_samples,
                                                                                     re=train_nue)

ivals = {'xin': xd, 'yin': yd, 'tin': td, 'xb': xb, 'yb': yb, 'tb': tb,
         'xbc_in': xbc_in, 'ybc_in': ybc_in, 'tbc_in': tbc_in, 'ubc_in': ubc_in, 'vbc_in': vbc_in, 'pbc_in': pbc_in,
         'xbc_b': xbc_b, 'ybc_b': ybc_b, 'tbc_b': tbc_b, 'ubc_b': ubc_b, 'vbc_b': vbc_b, 'pbc_b': pbc_b,
         'nue_d': nue_d}
ovals = {'ub': ub, 'vb': vb, 'pb': pb}
parameters = {'train_nue': [1 / 10, 1 / 50, 1 / 100],
              'test_nue': [1 / 10, 1 / 20, 1 / 30, 1 / 40, 1 / 50, 1 / 80, 1 / 100]}

initializer = tf.keras.initializers.GlorotUniform(1234)

# Define the input layers
input1 = keras.Input(shape=(1,), name='X_layer')
input2 = keras.Input(shape=(1,), name='Y_layer')
input3 = keras.Input(shape=(1,), name='T_layer')
rescale_input3 = layers.Rescaling(scale=2, offset=-1)(input3)


# Define the sequential model for query value transfer
def get_model(model_name, layer_names, layer_units, activation='swish'):
    sq = keras.Sequential(name=model_name)
    for i in range(len(layer_units)):
        sq.add(layers.Dense(units=layer_units[i], kernel_initializer=initializer,
                            name=layer_names + str(i + 1)))
        sq.add(layers.Activation(activation=activation))
    return sq


# transforming query values
sp_trans = get_model(model_name='spatial_transformation',
                     layer_names='spatial_layer',
                     layer_units=[64, 64, 64, 64], activation='swish')

sp = layers.Concatenate()([input1, input2, rescale_input3])
spq = sp_trans(sp)

# value transformation for boundary
input4 = keras.Input(shape=(5*sensor_samples,), name='Ubc_layer')
input5 = keras.Input(shape=(5*sensor_samples,), name='Vbc_layer')
input6 = keras.Input(shape=(5*sensor_samples,), name='Pbc_layer')

ou = get_model(model_name='U',
               layer_units=[64, 64, 64, 64], layer_names='ou', activation='swish')(input4)
ou = layers.Dot(axes=(1, 1))([ou, spq])

ov = get_model(model_name='V',
               layer_units=[64, 64, 64, 64], layer_names='ov', activation='swish')(input5)
ov = layers.Dot(axes=(1, 1))([ov, spq])

op = get_model(model_name='P',
               layer_units=[64, 64, 64, 64], layer_names='op', activation='swish')(input6)
op = layers.Dot(axes=(1, 1))([op, spq])

model = keras.Model([input1, input2, input3, input4, input5, input6], [ou, ov, op])

model.summary()
initial_learning_rate = 1e-4
# decay_steps = 10000
# decay_rate = 0.5
# staircase = True
# step_lim = 50000
# lr_schedule = MyRLSchedule(
#     initial_learning_rate=initial_learning_rate,
#     decay_steps=decay_steps,
#     higher_decay_rate=decay_rate[0],
#     lower_decay_rate = decay_rate[1],
#     staircase=staircase, step_lim=step_lim)

# lr_schedule = keras.optimizers.schedules.ExponentialDecay(
#     initial_learning_rate=initial_learning_rate,
#     decay_steps=decay_steps,
#     decay_rate=decay_rate,
#     staircase=staircase)

# Training the model
loss_fn = keras.losses.MeanSquaredError()
optimizer = keras.optimizers.Adam(learning_rate=initial_learning_rate)
model.compile(optimizer=optimizer, loss=loss_fn)
model_dict = {"nn_model": model}
metrics = {"loss": keras.metrics.Mean(name='loss'),
           "bound_loss": keras.metrics.Mean(name='std_loss'),
           "residual_loss": keras.metrics.Mean(name='residual_loss'),
           "u_loss": keras.metrics.Mean(name='u_loss'),
           "v_loss": keras.metrics.Mean(name='v_loss'),
           "p_loss": keras.metrics.Mean(name='p_loss')
           }
batches = 5

cm = PdeModel(inputs=ivals, outputs=ovals, get_models=model_dict, loss_fn=loss_fn, optimizer=optimizer, metrics=metrics,
              parameters=parameters, batches=batches)

epochs = 40000
vf = 100
pf = 1000
wb = True

configuration = {'#_total_initial_and_boundary_points': len(xb),
                 '#_total_domain_points': len(xd),
                 "optimizer": 'Adam',
                 "batches": batches,
                 "learning_rate": initial_learning_rate,
                 # "initial_lr": 'NA',
                 # "decay_rate": 'NA',
                 # "decay_steps": 'NA',
                 # "staircase": 'NA',
                 # 'step_lim': 'NA',
                 # "lr_scheduler": 'NA',
                 "Epochs": epochs,
                 "Activation": 'swish',
                 "model_name": 'Beltrami_Deeponet_model.keras',
                 "trainable_parameters": np.sum([np.prod(lay.shape) for lay in model.trainable_weights]),
                 "non_trainable_parameters": np.sum([np.prod(lay.shape) for lay in model.non_trainable_weights]),
                 "nue": parameters['test_nue'],
                 "kernel_initializer": 'GlorotUniform',
                 "sequence_length": 5 * sensor_samples}

print(configuration)

if wb:
    wandb.init(project='Finalising_results', config=configuration)

log_dir = 'output/Beltrami_DeepONet/'
sdata = pd.DataFrame(sen_data)
sdata.to_csv(path_or_buf=log_dir + 'sensor.csv')

history = cm.run(epochs=epochs, log_dir=log_dir, wb=wb, verbose_freq=vf, plot_freq=pf)
if wb:
    wandb.finish()

# Evaluation
cm.nn_model.save(log_dir + 'Beltrammi_Deeponet_model.keras')
