Гј 
њУ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
Ѓ
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
П
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
∞
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-2-g0b15fdfcb3f8ТЖ
Г
ou2/biasVarHandleOp*
_output_shapes
: *

debug_name	ou2/bias/*
dtype0*
shape:@*
shared_name
ou2/bias
a
ou2/bias/Read/ReadVariableOpReadVariableOpou2/bias*
_output_shapes
:@*
dtype0
Н

ou2/kernelVarHandleOp*
_output_shapes
: *

debug_nameou2/kernel/*
dtype0*
shape
:@@*
shared_name
ou2/kernel
i
ou2/kernel/Read/ReadVariableOpReadVariableOp
ou2/kernel*
_output_shapes

:@@*
dtype0
Г
ou1/biasVarHandleOp*
_output_shapes
: *

debug_name	ou1/bias/*
dtype0*
shape:@*
shared_name
ou1/bias
a
ou1/bias/Read/ReadVariableOpReadVariableOpou1/bias*
_output_shapes
:@*
dtype0
Н

ou1/kernelVarHandleOp*
_output_shapes
: *

debug_nameou1/kernel/*
dtype0*
shape
:@@*
shared_name
ou1/kernel
i
ou1/kernel/Read/ReadVariableOpReadVariableOp
ou1/kernel*
_output_shapes

:@@*
dtype0
п
,multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *=

debug_name/-multi_head_attention_1/attention_output/bias/*
dtype0*
shape:@*=
shared_name.,multi_head_attention_1/attention_output/bias
©
@multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_1/attention_output/bias*
_output_shapes
:@*
dtype0
э
.multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *?

debug_name1/multi_head_attention_1/attention_output/kernel/*
dtype0*
shape:@@*?
shared_name0.multi_head_attention_1/attention_output/kernel
µ
Bmulti_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_1/attention_output/kernel*"
_output_shapes
:@@*
dtype0
“
!multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention_1/value/bias/*
dtype0*
shape
:@*2
shared_name#!multi_head_attention_1/value/bias
Ч
5multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/value/bias*
_output_shapes

:@*
dtype0
№
#multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$multi_head_attention_1/value/kernel/*
dtype0*
shape:@@*4
shared_name%#multi_head_attention_1/value/kernel
Я
7multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/value/kernel*"
_output_shapes
:@@*
dtype0
ћ
multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention_1/key/bias/*
dtype0*
shape
:@*0
shared_name!multi_head_attention_1/key/bias
У
3multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_1/key/bias*
_output_shapes

:@*
dtype0
÷
!multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention_1/key/kernel/*
dtype0*
shape:@@*2
shared_name#!multi_head_attention_1/key/kernel
Ы
5multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/key/kernel*"
_output_shapes
:@@*
dtype0
“
!multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention_1/query/bias/*
dtype0*
shape
:@*2
shared_name#!multi_head_attention_1/query/bias
Ч
5multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/query/bias*
_output_shapes

:@*
dtype0
№
#multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$multi_head_attention_1/query/kernel/*
dtype0*
shape:@@*4
shared_name%#multi_head_attention_1/query/kernel
Я
7multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/query/kernel*"
_output_shapes
:@@*
dtype0
й
*multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *;

debug_name-+multi_head_attention/attention_output/bias/*
dtype0*
shape:@*;
shared_name,*multi_head_attention/attention_output/bias
•
>multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp*multi_head_attention/attention_output/bias*
_output_shapes
:@*
dtype0
ч
,multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-multi_head_attention/attention_output/kernel/*
dtype0*
shape:@@*=
shared_name.,multi_head_attention/attention_output/kernel
±
@multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/kernel*"
_output_shapes
:@@*
dtype0
ћ
multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention/value/bias/*
dtype0*
shape
:@*0
shared_name!multi_head_attention/value/bias
У
3multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/value/bias*
_output_shapes

:@*
dtype0
÷
!multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention/value/kernel/*
dtype0*
shape:@@*2
shared_name#!multi_head_attention/value/kernel
Ы
5multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/value/kernel*"
_output_shapes
:@@*
dtype0
∆
multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *.

debug_name multi_head_attention/key/bias/*
dtype0*
shape
:@*.
shared_namemulti_head_attention/key/bias
П
1multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/bias*
_output_shapes

:@*
dtype0
–
multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention/key/kernel/*
dtype0*
shape:@@*0
shared_name!multi_head_attention/key/kernel
Ч
3multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/kernel*"
_output_shapes
:@@*
dtype0
ћ
multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *0

debug_name" multi_head_attention/query/bias/*
dtype0*
shape
:@*0
shared_name!multi_head_attention/query/bias
У
3multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/query/bias*
_output_shapes

:@*
dtype0
÷
!multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *2

debug_name$"multi_head_attention/query/kernel/*
dtype0*
shape:@@*2
shared_name#!multi_head_attention/query/kernel
Ы
5multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/query/kernel*"
_output_shapes
:@@*
dtype0
Ш
bpe_layer2/biasVarHandleOp*
_output_shapes
: * 

debug_namebpe_layer2/bias/*
dtype0*
shape:@* 
shared_namebpe_layer2/bias
o
#bpe_layer2/bias/Read/ReadVariableOpReadVariableOpbpe_layer2/bias*
_output_shapes
:@*
dtype0
Ґ
bpe_layer2/kernelVarHandleOp*
_output_shapes
: *"

debug_namebpe_layer2/kernel/*
dtype0*
shape
:@@*"
shared_namebpe_layer2/kernel
w
%bpe_layer2/kernel/Read/ReadVariableOpReadVariableOpbpe_layer2/kernel*
_output_shapes

:@@*
dtype0
Ш
bpe_layer1/biasVarHandleOp*
_output_shapes
: * 

debug_namebpe_layer1/bias/*
dtype0*
shape:@* 
shared_namebpe_layer1/bias
o
#bpe_layer1/bias/Read/ReadVariableOpReadVariableOpbpe_layer1/bias*
_output_shapes
:@*
dtype0
Ґ
bpe_layer1/kernelVarHandleOp*
_output_shapes
: *"

debug_namebpe_layer1/kernel/*
dtype0*
shape
:@*"
shared_namebpe_layer1/kernel
w
%bpe_layer1/kernel/Read/ReadVariableOpReadVariableOpbpe_layer1/kernel*
_output_shapes

:@*
dtype0
§
spatial_layer2/biasVarHandleOp*
_output_shapes
: *$

debug_namespatial_layer2/bias/*
dtype0*
shape:@*$
shared_namespatial_layer2/bias
w
'spatial_layer2/bias/Read/ReadVariableOpReadVariableOpspatial_layer2/bias*
_output_shapes
:@*
dtype0
Ѓ
spatial_layer2/kernelVarHandleOp*
_output_shapes
: *&

debug_namespatial_layer2/kernel/*
dtype0*
shape
:@@*&
shared_namespatial_layer2/kernel

)spatial_layer2/kernel/Read/ReadVariableOpReadVariableOpspatial_layer2/kernel*
_output_shapes

:@@*
dtype0
§
spatial_layer1/biasVarHandleOp*
_output_shapes
: *$

debug_namespatial_layer1/bias/*
dtype0*
shape:@*$
shared_namespatial_layer1/bias
w
'spatial_layer1/bias/Read/ReadVariableOpReadVariableOpspatial_layer1/bias*
_output_shapes
:@*
dtype0
Ѓ
spatial_layer1/kernelVarHandleOp*
_output_shapes
: *&

debug_namespatial_layer1/kernel/*
dtype0*
shape
:@*&
shared_namespatial_layer1/kernel

)spatial_layer1/kernel/Read/ReadVariableOpReadVariableOpspatial_layer1/kernel*
_output_shapes

:@*
dtype0
Т
output_u/biasVarHandleOp*
_output_shapes
: *

debug_nameoutput_u/bias/*
dtype0*
shape:*
shared_nameoutput_u/bias
k
!output_u/bias/Read/ReadVariableOpReadVariableOpoutput_u/bias*
_output_shapes
:*
dtype0
Ь
output_u/kernelVarHandleOp*
_output_shapes
: * 

debug_nameoutput_u/kernel/*
dtype0*
shape
:@* 
shared_nameoutput_u/kernel
s
#output_u/kernel/Read/ReadVariableOpReadVariableOpoutput_u/kernel*
_output_shapes

:@*
dtype0
П
dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namedense_2/bias/*
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
Щ
dense_2/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_2/kernel/*
dtype0*
shape
:@@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@@*
dtype0
П
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
Щ
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape
:@@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@@*
dtype0
Й

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
У
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape
:@@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@@*
dtype0
Ы
bve_layer_2/biasVarHandleOp*
_output_shapes
: *!

debug_namebve_layer_2/bias/*
dtype0*
shape:@*!
shared_namebve_layer_2/bias
q
$bve_layer_2/bias/Read/ReadVariableOpReadVariableOpbve_layer_2/bias*
_output_shapes
:@*
dtype0
•
bve_layer_2/kernelVarHandleOp*
_output_shapes
: *#

debug_namebve_layer_2/kernel/*
dtype0*
shape
:@@*#
shared_namebve_layer_2/kernel
y
&bve_layer_2/kernel/Read/ReadVariableOpReadVariableOpbve_layer_2/kernel*
_output_shapes

:@@*
dtype0
Ы
bve_layer_1/biasVarHandleOp*
_output_shapes
: *!

debug_namebve_layer_1/bias/*
dtype0*
shape:@*!
shared_namebve_layer_1/bias
q
$bve_layer_1/bias/Read/ReadVariableOpReadVariableOpbve_layer_1/bias*
_output_shapes
:@*
dtype0
•
bve_layer_1/kernelVarHandleOp*
_output_shapes
: *#

debug_namebve_layer_1/kernel/*
dtype0*
shape
:@*#
shared_namebve_layer_1/kernel
y
&bve_layer_1/kernel/Read/ReadVariableOpReadVariableOpbve_layer_1/kernel*
_output_shapes

:@*
dtype0
Ц
serving_default_Xbc_layerPlaceholder*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
dtype0*)
shape :€€€€€€€€€€€€€€€€€€
z
serving_default_t_inputPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Ц
serving_default_tbc_layerPlaceholder*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
dtype0*)
shape :€€€€€€€€€€€€€€€€€€
Ц
serving_default_ubc_layerPlaceholder*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
dtype0*)
shape :€€€€€€€€€€€€€€€€€€
z
serving_default_x_inputPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
÷
StatefulPartitionedCallStatefulPartitionedCallserving_default_Xbc_layerserving_default_t_inputserving_default_tbc_layerserving_default_ubc_layerserving_default_x_inputbve_layer_1/kernelbve_layer_1/biasbpe_layer1/kernelbpe_layer1/biasbpe_layer2/kernelbpe_layer2/biasbve_layer_2/kernelbve_layer_2/biasspatial_layer1/kernelspatial_layer1/biasspatial_layer2/kernelspatial_layer2/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biasdense_2/kerneldense_2/bias
ou1/kernelou1/bias
ou2/kernelou2/biasoutput_u/kerneloutput_u/bias*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*J
_read_only_resource_inputs,
*(	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8В *.
f)R'
%__inference_signature_wrapper_4653965

NoOpNoOp
±ш
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*лч
valueачB№ч B‘ч
Њ
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-0
layer-12
layer_with_weights-1
layer-13
layer_with_weights-2
layer-14
layer_with_weights-3
layer-15
layer_with_weights-4
layer-16
layer-17
layer_with_weights-5
layer-18
layer_with_weights-6
layer-19
layer_with_weights-7
layer-20
layer-21
layer_with_weights-8
layer-22
layer-23
layer_with_weights-9
layer-24
layer_with_weights-10
layer-25
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature
"
signatures*
* 
* 
О
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
О
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
* 
* 
О
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses* 
О
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
О
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 
* 
О
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
О
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses* 
¶
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias*
ш
Ulayer_with_weights-0
Ulayer-0
Vlayer-1
Wlayer_with_weights-1
Wlayer-2
Xlayer-3
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses*
ш
_layer_with_weights-0
_layer-0
`layer-1
alayer_with_weights-1
alayer-2
blayer-3
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses*
¶
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias*
щ
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
w_query_dense
x
_key_dense
y_value_dense
z_softmax
{_dropout_layer
|_output_dense*
С
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses* 
Ѓ
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Йkernel
	Кbias*
Ѓ
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
Сkernel
	Тbias*
Е
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щ_query_dense
Ъ
_key_dense
Ы_value_dense
Ь_softmax
Э_dropout_layer
Ю_output_dense*
Ф
Я	variables
†trainable_variables
°regularization_losses
Ґ	keras_api
£__call__
+§&call_and_return_all_conditional_losses* 
Ѓ
•	variables
¶trainable_variables
Іregularization_losses
®	keras_api
©__call__
+™&call_and_return_all_conditional_losses
Ђkernel
	ђbias*
Ф
≠	variables
Ѓtrainable_variables
ѓregularization_losses
∞	keras_api
±__call__
+≤&call_and_return_all_conditional_losses* 
Д
≥layer_with_weights-0
≥layer-0
іlayer-1
µlayer_with_weights-1
µlayer-2
ґlayer-3
Ј	variables
Єtrainable_variables
єregularization_losses
Ї	keras_api
ї__call__
+Љ&call_and_return_all_conditional_losses*
Ѓ
љ	variables
Њtrainable_variables
њregularization_losses
ј	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses
√kernel
	ƒbias*
ё
S0
T1
≈2
∆3
«4
»5
…6
 7
Ћ8
ћ9
o10
p11
Ќ12
ќ13
ѕ14
–15
—16
“17
”18
‘19
Й20
К21
С22
Т23
’24
÷25
„26
Ў27
ў28
Џ29
џ30
№31
Ђ32
ђ33
Ё34
ё35
я36
а37
√38
ƒ39*
ё
S0
T1
≈2
∆3
«4
»5
…6
 7
Ћ8
ћ9
o10
p11
Ќ12
ќ13
ѕ14
–15
—16
“17
”18
‘19
Й20
К21
С22
Т23
’24
÷25
„26
Ў27
ў28
Џ29
џ30
№31
Ђ32
ђ33
Ё34
ё35
я36
а37
√38
ƒ39*
* 
µ
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

жtrace_0
зtrace_1* 

иtrace_0
йtrace_1* 
* 

кserving_default* 
* 
* 
* 
Ц
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

рtrace_0* 

сtrace_0* 
* 
* 
* 
Ц
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

чtrace_0* 

шtrace_0* 
* 
* 
* 
Ц
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 

юtrace_0* 

€trace_0* 
* 
* 
* 
Ц
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

Еtrace_0* 

Жtrace_0* 
* 
* 
* 
Ц
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

Мtrace_0* 

Нtrace_0* 
* 
* 
* 
Ц
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

Уtrace_0* 

Фtrace_0* 
* 
* 
* 
Ц
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 

Ъtrace_0* 

Ыtrace_0* 

S0
T1*

S0
T1*
* 
Ш
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

°trace_0* 

Ґtrace_0* 
b\
VARIABLE_VALUEbve_layer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbve_layer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
£	variables
§trainable_variables
•regularization_losses
¶	keras_api
І__call__
+®&call_and_return_all_conditional_losses
≈kernel
	∆bias*
Ф
©	variables
™trainable_variables
Ђregularization_losses
ђ	keras_api
≠__call__
+Ѓ&call_and_return_all_conditional_losses* 
Ѓ
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses
«kernel
	»bias*
Ф
µ	variables
ґtrainable_variables
Јregularization_losses
Є	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses* 
$
≈0
∆1
«2
»3*
$
≈0
∆1
«2
»3*
* 
Ш
їnon_trainable_variables
Љlayers
љmetrics
 Њlayer_regularization_losses
њlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

јtrace_0
Ѕtrace_1* 

¬trace_0
√trace_1* 
Ѓ
ƒ	variables
≈trainable_variables
∆regularization_losses
«	keras_api
»__call__
+…&call_and_return_all_conditional_losses
…kernel
	 bias*
Ф
 	variables
Ћtrainable_variables
ћregularization_losses
Ќ	keras_api
ќ__call__
+ѕ&call_and_return_all_conditional_losses* 
Ѓ
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘__call__
+’&call_and_return_all_conditional_losses
Ћkernel
	ћbias*
Ф
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses* 
$
…0
 1
Ћ2
ћ3*
$
…0
 1
Ћ2
ћ3*
* 
Ш
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

бtrace_0
вtrace_1* 

гtrace_0
дtrace_1* 

o0
p1*

o0
p1*
* 
Ш
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

кtrace_0* 

лtrace_0* 
b\
VARIABLE_VALUEbve_layer_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbve_layer_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
D
Ќ0
ќ1
ѕ2
–3
—4
“5
”6
‘7*
D
Ќ0
ќ1
ѕ2
–3
—4
“5
”6
‘7*
* 
Ш
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

сtrace_0
тtrace_1* 

уtrace_0
фtrace_1* 
б
х	variables
цtrainable_variables
чregularization_losses
ш	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses
ыpartial_output_shape
ьfull_output_shape
Ќkernel
	ќbias*
б
э	variables
юtrainable_variables
€regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Гpartial_output_shape
Дfull_output_shape
ѕkernel
	–bias*
б
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses
Лpartial_output_shape
Мfull_output_shape
—kernel
	“bias*
Ф
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
ђ
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щ_random_generator* 
б
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
†partial_output_shape
°full_output_shape
”kernel
	‘bias*
* 
* 
* 
Щ
Ґnon_trainable_variables
£layers
§metrics
 •layer_regularization_losses
¶layer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses* 

Іtrace_0* 

®trace_0* 

Й0
К1*

Й0
К1*
* 
Ю
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses*

Ѓtrace_0* 

ѓtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

С0
Т1*

С0
Т1*
* 
Ю
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses*

µtrace_0* 

ґtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
D
’0
÷1
„2
Ў3
ў4
Џ5
џ6
№7*
D
’0
÷1
„2
Ў3
ў4
Џ5
џ6
№7*
* 
Ю
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses*

Љtrace_0
љtrace_1* 

Њtrace_0
њtrace_1* 
б
ј	variables
Ѕtrainable_variables
¬regularization_losses
√	keras_api
ƒ__call__
+≈&call_and_return_all_conditional_losses
∆partial_output_shape
«full_output_shape
’kernel
	÷bias*
б
»	variables
…trainable_variables
 regularization_losses
Ћ	keras_api
ћ__call__
+Ќ&call_and_return_all_conditional_losses
ќpartial_output_shape
ѕfull_output_shape
„kernel
	Ўbias*
б
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘__call__
+’&call_and_return_all_conditional_losses
÷partial_output_shape
„full_output_shape
ўkernel
	Џbias*
Ф
Ў	variables
ўtrainable_variables
Џregularization_losses
џ	keras_api
№__call__
+Ё&call_and_return_all_conditional_losses* 
ђ
ё	variables
яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses
д_random_generator* 
б
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
лpartial_output_shape
мfull_output_shape
џkernel
	№bias*
* 
* 
* 
Ь
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
Я	variables
†trainable_variables
°regularization_losses
£__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses* 

тtrace_0* 

уtrace_0* 

Ђ0
ђ1*

Ђ0
ђ1*
* 
Ю
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
•	variables
¶trainable_variables
Іregularization_losses
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses*

щtrace_0* 

ъtrace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
≠	variables
Ѓtrainable_variables
ѓregularization_losses
±__call__
+≤&call_and_return_all_conditional_losses
'≤"call_and_return_conditional_losses* 

Аtrace_0* 

Бtrace_0* 
Ѓ
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
Ёkernel
	ёbias*
Ф
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses* 
Ѓ
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses
яkernel
	аbias*
Ф
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses* 
$
Ё0
ё1
я2
а3*
$
Ё0
ё1
я2
а3*
* 
Ю
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
Ј	variables
Єtrainable_variables
єregularization_losses
ї__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses*

Яtrace_0
†trace_1* 

°trace_0
Ґtrace_1* 

√0
ƒ1*

√0
ƒ1*
* 
Ю
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
љ	variables
Њtrainable_variables
њregularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses*

®trace_0* 

©trace_0* 
`Z
VARIABLE_VALUEoutput_u/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEoutput_u/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEspatial_layer1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEspatial_layer1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEspatial_layer2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEspatial_layer2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEbpe_layer1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEbpe_layer1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEbpe_layer2/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEbpe_layer2/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention/query/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention/query/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention/key/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEmulti_head_attention/key/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention/value/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention/value/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention/attention_output/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*multi_head_attention/attention_output/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_1/query/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/query/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/key/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_1/key/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_1/value/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/value/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_1/attention_output/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_1/attention_output/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
ou1/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEou1/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
ou2/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEou2/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

≈0
∆1*

≈0
∆1*
* 
Ю
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
£	variables
§trainable_variables
•regularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses*

ѓtrace_0* 

∞trace_0* 
* 
* 
* 
Ь
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
©	variables
™trainable_variables
Ђregularization_losses
≠__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses* 

ґtrace_0* 

Јtrace_0* 

«0
»1*

«0
»1*
* 
Ю
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses*

љtrace_0* 

Њtrace_0* 
* 
* 
* 
Ь
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
µ	variables
ґtrainable_variables
Јregularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses* 

ƒtrace_0* 

≈trace_0* 
* 
 
U0
V1
W2
X3*
* 
* 
* 
* 
* 
* 
* 

…0
 1*

…0
 1*
* 
Ю
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
ƒ	variables
≈trainable_variables
∆regularization_losses
»__call__
+…&call_and_return_all_conditional_losses
'…"call_and_return_conditional_losses*

Ћtrace_0* 

ћtrace_0* 
* 
* 
* 
Ь
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
 	variables
Ћtrainable_variables
ћregularization_losses
ќ__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses* 

“trace_0* 

”trace_0* 

Ћ0
ћ1*

Ћ0
ћ1*
* 
Ю
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
–	variables
—trainable_variables
“regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses*

ўtrace_0* 

Џtrace_0* 
* 
* 
* 
Ь
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses* 

аtrace_0* 

бtrace_0* 
* 
 
_0
`1
a2
b3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
w0
x1
y2
z3
{4
|5*
* 
* 
* 
* 
* 
* 
* 

Ќ0
ќ1*

Ќ0
ќ1*
* 
Ю
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
х	variables
цtrainable_variables
чregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses*
* 
* 
* 
* 

ѕ0
–1*

ѕ0
–1*
* 
Ю
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
э	variables
юtrainable_variables
€regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses*
* 
* 
* 
* 

—0
“1*

—0
“1*
* 
Ю
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
Ь
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses* 
* 
* 
* 

”0
‘1*

”0
‘1*
* 
Ю
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
4
Щ0
Ъ1
Ы2
Ь3
Э4
Ю5*
* 
* 
* 
* 
* 
* 
* 

’0
÷1*

’0
÷1*
* 
Ю
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
ј	variables
Ѕtrainable_variables
¬regularization_losses
ƒ__call__
+≈&call_and_return_all_conditional_losses
'≈"call_and_return_conditional_losses*
* 
* 
* 
* 

„0
Ў1*

„0
Ў1*
* 
Ю
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
»	variables
…trainable_variables
 regularization_losses
ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses*
* 
* 
* 
* 

ў0
Џ1*

ў0
Џ1*
* 
Ю
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
–	variables
—trainable_variables
“regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
Ь
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
Ў	variables
ўtrainable_variables
Џregularization_losses
№__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
ё	variables
яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses* 
* 
* 
* 

џ0
№1*

џ0
№1*
* 
Ю
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ё0
ё1*

Ё0
ё1*
* 
Ю
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

£trace_0* 

§trace_0* 
* 
* 
* 
Ь
•non_trainable_variables
¶layers
Іmetrics
 ®layer_regularization_losses
©layer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses* 

™trace_0* 

Ђtrace_0* 

я0
а1*

я0
а1*
* 
Ю
ђnon_trainable_variables
≠layers
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses*

±trace_0* 

≤trace_0* 
* 
* 
* 
Ь
≥non_trainable_variables
іlayers
µmetrics
 ґlayer_regularization_losses
Јlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses* 

Єtrace_0* 

єtrace_0* 
* 
$
≥0
і1
µ2
ґ3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
©

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamebve_layer_1/kernelbve_layer_1/biasbve_layer_2/kernelbve_layer_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasoutput_u/kerneloutput_u/biasspatial_layer1/kernelspatial_layer1/biasspatial_layer2/kernelspatial_layer2/biasbpe_layer1/kernelbpe_layer1/biasbpe_layer2/kernelbpe_layer2/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/bias
ou1/kernelou1/bias
ou2/kernelou2/biasConst*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__traced_save_4655073
§

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebve_layer_1/kernelbve_layer_1/biasbve_layer_2/kernelbve_layer_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasoutput_u/kerneloutput_u/biasspatial_layer1/kernelspatial_layer1/biasspatial_layer2/kernelspatial_layer2/biasbpe_layer1/kernelbpe_layer1/biasbpe_layer2/kernelbpe_layer2/bias!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/bias
ou1/kernelou1/bias
ou2/kernelou2/bias*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference__traced_restore_4655202вД
Р
В
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4652536

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
у	
с
@__inference_ou2_layer_call_and_return_conditional_losses_4654797

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
К
t
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4652986

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :В
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:\X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
€
Ф
'__inference_dense_layer_call_fn_4654282

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4653146s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654278:'#
!
_user_specified_name	4654276:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ш	
ц
E__inference_output_u_layer_call_and_return_conditional_losses_4654553

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Х
√
@__inference_BPE_layer_call_and_return_conditional_losses_4652705
bpe_layer1_input$
bpe_layer1_4652652:@ 
bpe_layer1_4652654:@$
bpe_layer2_4652693:@@ 
bpe_layer2_4652695:@
identityИҐ"bpe_layer1/StatefulPartitionedCallҐ"bpe_layer2/StatefulPartitionedCallХ
"bpe_layer1/StatefulPartitionedCallStatefulPartitionedCallbpe_layer1_inputbpe_layer1_4652652bpe_layer1_4652654*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4652651ц
activation_2/PartitionedCallPartitionedCall+bpe_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_4652661™
"bpe_layer2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0bpe_layer2_4652693bpe_layer2_4652695*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4652692ц
activation_3/PartitionedCallPartitionedCall+bpe_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_4652702Б
IdentityIdentity%activation_3/PartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
NoOpNoOp#^bpe_layer1/StatefulPartitionedCall#^bpe_layer2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2H
"bpe_layer1/StatefulPartitionedCall"bpe_layer1/StatefulPartitionedCall2H
"bpe_layer2/StatefulPartitionedCall"bpe_layer2/StatefulPartitionedCall:'#
!
_user_specified_name	4652695:'#
!
_user_specified_name	4652693:'#
!
_user_specified_name	4652654:'#
!
_user_specified_name	4652652:f b
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
*
_user_specified_namebpe_layer1_input
г	
“
%__inference_BPE_layer_call_fn_4652734
bpe_layer1_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallbpe_layer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_BPE_layer_call_and_return_conditional_losses_4652705|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4652730:'#
!
_user_specified_name	4652728:'#
!
_user_specified_name	4652726:'#
!
_user_specified_name	4652724:f b
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
*
_user_specified_namebpe_layer1_input
’
l
@__inference_add_layer_call_and_return_conditional_losses_4654273
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:€€€€€€€€€@S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€@:€€€€€€€€€@:UQ
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_1:U Q
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_0
„
n
B__inference_add_1_layer_call_and_return_conditional_losses_4654483
inputs_0
inputs_1
identityV
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:€€€€€€€€€@S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€@:€€€€€€€€€@:UQ
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_1:U Q
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_0
∆
ц
8__inference_multi_head_attention_1_layer_call_fn_4654399	
query	
value
key
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
identityИҐStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallqueryvaluekeyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4653457s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	4654395:'	#
!
_user_specified_name	4654393:'#
!
_user_specified_name	4654391:'#
!
_user_specified_name	4654389:'#
!
_user_specified_name	4654387:'#
!
_user_specified_name	4654385:'#
!
_user_specified_name	4654383:'#
!
_user_specified_name	4654381:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
с	
й
8__inference_spatial_transformation_layer_call_fn_4652591
spatial_layer1_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652565s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4652587:'#
!
_user_specified_name	4652585:'#
!
_user_specified_name	4652583:'#
!
_user_specified_name	4652581:a ]
+
_output_shapes
:€€€€€€€€€
.
_user_specified_namespatial_layer1_input
ЙЬ
ё)
"__inference__wrapped_model_4652463
x_input
t_input
	xbc_layer
	tbc_layer
	ubc_layerE
3model_bve_layer_1_tensordot_readvariableop_resource:@?
1model_bve_layer_1_biasadd_readvariableop_resource:@H
6model_bpe_bpe_layer1_tensordot_readvariableop_resource:@B
4model_bpe_bpe_layer1_biasadd_readvariableop_resource:@H
6model_bpe_bpe_layer2_tensordot_readvariableop_resource:@@B
4model_bpe_bpe_layer2_biasadd_readvariableop_resource:@E
3model_bve_layer_2_tensordot_readvariableop_resource:@@?
1model_bve_layer_2_biasadd_readvariableop_resource:@_
Mmodel_spatial_transformation_spatial_layer1_tensordot_readvariableop_resource:@Y
Kmodel_spatial_transformation_spatial_layer1_biasadd_readvariableop_resource:@_
Mmodel_spatial_transformation_spatial_layer2_tensordot_readvariableop_resource:@@Y
Kmodel_spatial_transformation_spatial_layer2_biasadd_readvariableop_resource:@\
Fmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource:@@N
<model_multi_head_attention_query_add_readvariableop_resource:@Z
Dmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource:@@L
:model_multi_head_attention_key_add_readvariableop_resource:@\
Fmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource:@@N
<model_multi_head_attention_value_add_readvariableop_resource:@g
Qmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:@@U
Gmodel_multi_head_attention_attention_output_add_readvariableop_resource:@?
-model_dense_tensordot_readvariableop_resource:@@9
+model_dense_biasadd_readvariableop_resource:@A
/model_dense_1_tensordot_readvariableop_resource:@@;
-model_dense_1_biasadd_readvariableop_resource:@^
Hmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:@@P
>model_multi_head_attention_1_query_add_readvariableop_resource:@\
Fmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:@@N
<model_multi_head_attention_1_key_add_readvariableop_resource:@^
Hmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:@@P
>model_multi_head_attention_1_value_add_readvariableop_resource:@i
Smodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:@@W
Imodel_multi_head_attention_1_attention_output_add_readvariableop_resource:@A
/model_dense_2_tensordot_readvariableop_resource:@@;
-model_dense_2_biasadd_readvariableop_resource:@<
*model_u_ou1_matmul_readvariableop_resource:@@9
+model_u_ou1_biasadd_readvariableop_resource:@<
*model_u_ou2_matmul_readvariableop_resource:@@9
+model_u_ou2_biasadd_readvariableop_resource:@?
-model_output_u_matmul_readvariableop_resource:@<
.model_output_u_biasadd_readvariableop_resource:
identityИҐ+model/BPE/bpe_layer1/BiasAdd/ReadVariableOpҐ-model/BPE/bpe_layer1/Tensordot/ReadVariableOpҐ+model/BPE/bpe_layer2/BiasAdd/ReadVariableOpҐ-model/BPE/bpe_layer2/Tensordot/ReadVariableOpҐ"model/U/ou1/BiasAdd/ReadVariableOpҐ!model/U/ou1/MatMul/ReadVariableOpҐ"model/U/ou2/BiasAdd/ReadVariableOpҐ!model/U/ou2/MatMul/ReadVariableOpҐ(model/bve_layer_1/BiasAdd/ReadVariableOpҐ*model/bve_layer_1/Tensordot/ReadVariableOpҐ(model/bve_layer_2/BiasAdd/ReadVariableOpҐ*model/bve_layer_2/Tensordot/ReadVariableOpҐ"model/dense/BiasAdd/ReadVariableOpҐ$model/dense/Tensordot/ReadVariableOpҐ$model/dense_1/BiasAdd/ReadVariableOpҐ&model/dense_1/Tensordot/ReadVariableOpҐ$model/dense_2/BiasAdd/ReadVariableOpҐ&model/dense_2/Tensordot/ReadVariableOpҐ>model/multi_head_attention/attention_output/add/ReadVariableOpҐHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpҐ1model/multi_head_attention/key/add/ReadVariableOpҐ;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpҐ3model/multi_head_attention/query/add/ReadVariableOpҐ=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpҐ3model/multi_head_attention/value/add/ReadVariableOpҐ=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpҐ@model/multi_head_attention_1/attention_output/add/ReadVariableOpҐJmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ3model/multi_head_attention_1/key/add/ReadVariableOpҐ=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ5model/multi_head_attention_1/query/add/ReadVariableOpҐ?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ5model/multi_head_attention_1/value/add/ReadVariableOpҐ?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ%model/output_u/BiasAdd/ReadVariableOpҐ$model/output_u/MatMul/ReadVariableOpҐBmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpҐDmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpҐBmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpҐDmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOpX
model/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :m
model/rescaling/CastCastmodel/rescaling/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: ]
model/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањo
model/rescaling/mulMulx_inputmodel/rescaling/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€К
model/rescaling/addAddV2model/rescaling/mul:z:0!model/rescaling/Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
model/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
model/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањz
model/rescaling_1/mulMult_input!model/rescaling_1/Cast/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€Р
model/rescaling_1/addAddV2model/rescaling_1/mul:z:0#model/rescaling_1/Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
model/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
model/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€u
model/rescaling_2/Cast_1Cast#model/rescaling_2/Cast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: Й
model/rescaling_2/mulMul	xbc_layer!model/rescaling_2/Cast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Ц
model/rescaling_2/addAddV2model/rescaling_2/mul:z:0model/rescaling_2/Cast_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€]
model/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @_
model/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  АњЙ
model/rescaling_3/mulMul	tbc_layer!model/rescaling_3/Cast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Э
model/rescaling_3/addAddV2model/rescaling_3/mul:z:0#model/rescaling_3/Cast_1/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ї
model/concatenate/concatConcatV2model/rescaling/add:z:0model/rescaling_1/add:z:0&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Ю
*model/bve_layer_1/Tensordot/ReadVariableOpReadVariableOp3model_bve_layer_1_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0j
 model/bve_layer_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 model/bve_layer_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       h
!model/bve_layer_1/Tensordot/ShapeShape	ubc_layer*
T0*
_output_shapes
::нѕk
)model/bve_layer_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
$model/bve_layer_1/Tensordot/GatherV2GatherV2*model/bve_layer_1/Tensordot/Shape:output:0)model/bve_layer_1/Tensordot/free:output:02model/bve_layer_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+model/bve_layer_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : З
&model/bve_layer_1/Tensordot/GatherV2_1GatherV2*model/bve_layer_1/Tensordot/Shape:output:0)model/bve_layer_1/Tensordot/axes:output:04model/bve_layer_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!model/bve_layer_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
 model/bve_layer_1/Tensordot/ProdProd-model/bve_layer_1/Tensordot/GatherV2:output:0*model/bve_layer_1/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#model/bve_layer_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ™
"model/bve_layer_1/Tensordot/Prod_1Prod/model/bve_layer_1/Tensordot/GatherV2_1:output:0,model/bve_layer_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'model/bve_layer_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : д
"model/bve_layer_1/Tensordot/concatConcatV2)model/bve_layer_1/Tensordot/free:output:0)model/bve_layer_1/Tensordot/axes:output:00model/bve_layer_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ѓ
!model/bve_layer_1/Tensordot/stackPack)model/bve_layer_1/Tensordot/Prod:output:0+model/bve_layer_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:©
%model/bve_layer_1/Tensordot/transpose	Transpose	ubc_layer+model/bve_layer_1/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ј
#model/bve_layer_1/Tensordot/ReshapeReshape)model/bve_layer_1/Tensordot/transpose:y:0*model/bve_layer_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ј
"model/bve_layer_1/Tensordot/MatMulMatMul,model/bve_layer_1/Tensordot/Reshape:output:02model/bve_layer_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@m
#model/bve_layer_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@k
)model/bve_layer_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
$model/bve_layer_1/Tensordot/concat_1ConcatV2-model/bve_layer_1/Tensordot/GatherV2:output:0,model/bve_layer_1/Tensordot/Const_2:output:02model/bve_layer_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¬
model/bve_layer_1/TensordotReshape,model/bve_layer_1/Tensordot/MatMul:product:0-model/bve_layer_1/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ц
(model/bve_layer_1/BiasAdd/ReadVariableOpReadVariableOp1model_bve_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ї
model/bve_layer_1/BiasAddBiasAdd$model/bve_layer_1/Tensordot:output:00model/bve_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Б
model/bve_layer_1/TanhTanh"model/bve_layer_1/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@a
model/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ќ
model/concatenate_1/concatConcatV2model/rescaling_2/add:z:0model/rescaling_3/add:z:0(model/concatenate_1/concat/axis:output:0*
N*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€r
model/reshape/ShapeShape!model/concatenate/concat:output:0*
T0*
_output_shapes
::нѕk
!model/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#model/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#model/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
model/reshape/strided_sliceStridedSlicemodel/reshape/Shape:output:0*model/reshape/strided_slice/stack:output:0,model/reshape/strided_slice/stack_1:output:0,model/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
model/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :h
model/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€«
model/reshape/Reshape/shapePack$model/reshape/strided_slice:output:0&model/reshape/Reshape/shape/1:output:0&model/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Я
model/reshape/ReshapeReshape!model/concatenate/concat:output:0$model/reshape/Reshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€§
-model/BPE/bpe_layer1/Tensordot/ReadVariableOpReadVariableOp6model_bpe_bpe_layer1_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0m
#model/BPE/bpe_layer1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#model/BPE/bpe_layer1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Е
$model/BPE/bpe_layer1/Tensordot/ShapeShape#model/concatenate_1/concat:output:0*
T0*
_output_shapes
::нѕn
,model/BPE/bpe_layer1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : П
'model/BPE/bpe_layer1/Tensordot/GatherV2GatherV2-model/BPE/bpe_layer1/Tensordot/Shape:output:0,model/BPE/bpe_layer1/Tensordot/free:output:05model/BPE/bpe_layer1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.model/BPE/bpe_layer1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : У
)model/BPE/bpe_layer1/Tensordot/GatherV2_1GatherV2-model/BPE/bpe_layer1/Tensordot/Shape:output:0,model/BPE/bpe_layer1/Tensordot/axes:output:07model/BPE/bpe_layer1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$model/BPE/bpe_layer1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≠
#model/BPE/bpe_layer1/Tensordot/ProdProd0model/BPE/bpe_layer1/Tensordot/GatherV2:output:0-model/BPE/bpe_layer1/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&model/BPE/bpe_layer1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ≥
%model/BPE/bpe_layer1/Tensordot/Prod_1Prod2model/BPE/bpe_layer1/Tensordot/GatherV2_1:output:0/model/BPE/bpe_layer1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*model/BPE/bpe_layer1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : р
%model/BPE/bpe_layer1/Tensordot/concatConcatV2,model/BPE/bpe_layer1/Tensordot/free:output:0,model/BPE/bpe_layer1/Tensordot/axes:output:03model/BPE/bpe_layer1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Є
$model/BPE/bpe_layer1/Tensordot/stackPack,model/BPE/bpe_layer1/Tensordot/Prod:output:0.model/BPE/bpe_layer1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:…
(model/BPE/bpe_layer1/Tensordot/transpose	Transpose#model/concatenate_1/concat:output:0.model/BPE/bpe_layer1/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€…
&model/BPE/bpe_layer1/Tensordot/ReshapeReshape,model/BPE/bpe_layer1/Tensordot/transpose:y:0-model/BPE/bpe_layer1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€…
%model/BPE/bpe_layer1/Tensordot/MatMulMatMul/model/BPE/bpe_layer1/Tensordot/Reshape:output:05model/BPE/bpe_layer1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@p
&model/BPE/bpe_layer1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@n
,model/BPE/bpe_layer1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
'model/BPE/bpe_layer1/Tensordot/concat_1ConcatV20model/BPE/bpe_layer1/Tensordot/GatherV2:output:0/model/BPE/bpe_layer1/Tensordot/Const_2:output:05model/BPE/bpe_layer1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ћ
model/BPE/bpe_layer1/TensordotReshape/model/BPE/bpe_layer1/Tensordot/MatMul:product:00model/BPE/bpe_layer1/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ь
+model/BPE/bpe_layer1/BiasAdd/ReadVariableOpReadVariableOp4model_bpe_bpe_layer1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ƒ
model/BPE/bpe_layer1/BiasAddBiasAdd'model/BPE/bpe_layer1/Tensordot:output:03model/BPE/bpe_layer1/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Й
model/BPE/activation_2/TanhTanh%model/BPE/bpe_layer1/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@§
-model/BPE/bpe_layer2/Tensordot/ReadVariableOpReadVariableOp6model_bpe_bpe_layer2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0m
#model/BPE/bpe_layer2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#model/BPE/bpe_layer2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Б
$model/BPE/bpe_layer2/Tensordot/ShapeShapemodel/BPE/activation_2/Tanh:y:0*
T0*
_output_shapes
::нѕn
,model/BPE/bpe_layer2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : П
'model/BPE/bpe_layer2/Tensordot/GatherV2GatherV2-model/BPE/bpe_layer2/Tensordot/Shape:output:0,model/BPE/bpe_layer2/Tensordot/free:output:05model/BPE/bpe_layer2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.model/BPE/bpe_layer2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : У
)model/BPE/bpe_layer2/Tensordot/GatherV2_1GatherV2-model/BPE/bpe_layer2/Tensordot/Shape:output:0,model/BPE/bpe_layer2/Tensordot/axes:output:07model/BPE/bpe_layer2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$model/BPE/bpe_layer2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≠
#model/BPE/bpe_layer2/Tensordot/ProdProd0model/BPE/bpe_layer2/Tensordot/GatherV2:output:0-model/BPE/bpe_layer2/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&model/BPE/bpe_layer2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ≥
%model/BPE/bpe_layer2/Tensordot/Prod_1Prod2model/BPE/bpe_layer2/Tensordot/GatherV2_1:output:0/model/BPE/bpe_layer2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*model/BPE/bpe_layer2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : р
%model/BPE/bpe_layer2/Tensordot/concatConcatV2,model/BPE/bpe_layer2/Tensordot/free:output:0,model/BPE/bpe_layer2/Tensordot/axes:output:03model/BPE/bpe_layer2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Є
$model/BPE/bpe_layer2/Tensordot/stackPack,model/BPE/bpe_layer2/Tensordot/Prod:output:0.model/BPE/bpe_layer2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:≈
(model/BPE/bpe_layer2/Tensordot/transpose	Transposemodel/BPE/activation_2/Tanh:y:0.model/BPE/bpe_layer2/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@…
&model/BPE/bpe_layer2/Tensordot/ReshapeReshape,model/BPE/bpe_layer2/Tensordot/transpose:y:0-model/BPE/bpe_layer2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€…
%model/BPE/bpe_layer2/Tensordot/MatMulMatMul/model/BPE/bpe_layer2/Tensordot/Reshape:output:05model/BPE/bpe_layer2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@p
&model/BPE/bpe_layer2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@n
,model/BPE/bpe_layer2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ы
'model/BPE/bpe_layer2/Tensordot/concat_1ConcatV20model/BPE/bpe_layer2/Tensordot/GatherV2:output:0/model/BPE/bpe_layer2/Tensordot/Const_2:output:05model/BPE/bpe_layer2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ћ
model/BPE/bpe_layer2/TensordotReshape/model/BPE/bpe_layer2/Tensordot/MatMul:product:00model/BPE/bpe_layer2/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ь
+model/BPE/bpe_layer2/BiasAdd/ReadVariableOpReadVariableOp4model_bpe_bpe_layer2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ƒ
model/BPE/bpe_layer2/BiasAddBiasAdd'model/BPE/bpe_layer2/Tensordot:output:03model/BPE/bpe_layer2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Й
model/BPE/activation_3/TanhTanh%model/BPE/bpe_layer2/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ю
*model/bve_layer_2/Tensordot/ReadVariableOpReadVariableOp3model_bve_layer_2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0j
 model/bve_layer_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 model/bve_layer_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
!model/bve_layer_2/Tensordot/ShapeShapemodel/bve_layer_1/Tanh:y:0*
T0*
_output_shapes
::нѕk
)model/bve_layer_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
$model/bve_layer_2/Tensordot/GatherV2GatherV2*model/bve_layer_2/Tensordot/Shape:output:0)model/bve_layer_2/Tensordot/free:output:02model/bve_layer_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+model/bve_layer_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : З
&model/bve_layer_2/Tensordot/GatherV2_1GatherV2*model/bve_layer_2/Tensordot/Shape:output:0)model/bve_layer_2/Tensordot/axes:output:04model/bve_layer_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!model/bve_layer_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
 model/bve_layer_2/Tensordot/ProdProd-model/bve_layer_2/Tensordot/GatherV2:output:0*model/bve_layer_2/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#model/bve_layer_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ™
"model/bve_layer_2/Tensordot/Prod_1Prod/model/bve_layer_2/Tensordot/GatherV2_1:output:0,model/bve_layer_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'model/bve_layer_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : д
"model/bve_layer_2/Tensordot/concatConcatV2)model/bve_layer_2/Tensordot/free:output:0)model/bve_layer_2/Tensordot/axes:output:00model/bve_layer_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ѓ
!model/bve_layer_2/Tensordot/stackPack)model/bve_layer_2/Tensordot/Prod:output:0+model/bve_layer_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ї
%model/bve_layer_2/Tensordot/transpose	Transposemodel/bve_layer_1/Tanh:y:0+model/bve_layer_2/Tensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@ј
#model/bve_layer_2/Tensordot/ReshapeReshape)model/bve_layer_2/Tensordot/transpose:y:0*model/bve_layer_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€ј
"model/bve_layer_2/Tensordot/MatMulMatMul,model/bve_layer_2/Tensordot/Reshape:output:02model/bve_layer_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@m
#model/bve_layer_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@k
)model/bve_layer_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
$model/bve_layer_2/Tensordot/concat_1ConcatV2-model/bve_layer_2/Tensordot/GatherV2:output:0,model/bve_layer_2/Tensordot/Const_2:output:02model/bve_layer_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¬
model/bve_layer_2/TensordotReshape,model/bve_layer_2/Tensordot/MatMul:product:0-model/bve_layer_2/Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Ц
(model/bve_layer_2/BiasAdd/ReadVariableOpReadVariableOp1model_bve_layer_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ї
model/bve_layer_2/BiasAddBiasAdd$model/bve_layer_2/Tensordot:output:00model/bve_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@Б
model/bve_layer_2/TanhTanh"model/bve_layer_2/BiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@“
Dmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpReadVariableOpMmodel_spatial_transformation_spatial_layer1_tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0Д
:model/spatial_transformation/spatial_layer1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Л
:model/spatial_transformation/spatial_layer1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Ч
;model/spatial_transformation/spatial_layer1/Tensordot/ShapeShapemodel/reshape/Reshape:output:0*
T0*
_output_shapes
::нѕЕ
Cmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
>model/spatial_transformation/spatial_layer1/Tensordot/GatherV2GatherV2Dmodel/spatial_transformation/spatial_layer1/Tensordot/Shape:output:0Cmodel/spatial_transformation/spatial_layer1/Tensordot/free:output:0Lmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:З
Emodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
@model/spatial_transformation/spatial_layer1/Tensordot/GatherV2_1GatherV2Dmodel/spatial_transformation/spatial_layer1/Tensordot/Shape:output:0Cmodel/spatial_transformation/spatial_layer1/Tensordot/axes:output:0Nmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Е
;model/spatial_transformation/spatial_layer1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: т
:model/spatial_transformation/spatial_layer1/Tensordot/ProdProdGmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2:output:0Dmodel/spatial_transformation/spatial_layer1/Tensordot/Const:output:0*
T0*
_output_shapes
: З
=model/spatial_transformation/spatial_layer1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ш
<model/spatial_transformation/spatial_layer1/Tensordot/Prod_1ProdImodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2_1:output:0Fmodel/spatial_transformation/spatial_layer1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Г
Amodel/spatial_transformation/spatial_layer1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
<model/spatial_transformation/spatial_layer1/Tensordot/concatConcatV2Cmodel/spatial_transformation/spatial_layer1/Tensordot/free:output:0Cmodel/spatial_transformation/spatial_layer1/Tensordot/axes:output:0Jmodel/spatial_transformation/spatial_layer1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:э
;model/spatial_transformation/spatial_layer1/Tensordot/stackPackCmodel/spatial_transformation/spatial_layer1/Tensordot/Prod:output:0Emodel/spatial_transformation/spatial_layer1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:й
?model/spatial_transformation/spatial_layer1/Tensordot/transpose	Transposemodel/reshape/Reshape:output:0Emodel/spatial_transformation/spatial_layer1/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€О
=model/spatial_transformation/spatial_layer1/Tensordot/ReshapeReshapeCmodel/spatial_transformation/spatial_layer1/Tensordot/transpose:y:0Dmodel/spatial_transformation/spatial_layer1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€О
<model/spatial_transformation/spatial_layer1/Tensordot/MatMulMatMulFmodel/spatial_transformation/spatial_layer1/Tensordot/Reshape:output:0Lmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@З
=model/spatial_transformation/spatial_layer1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Е
Cmodel/spatial_transformation/spatial_layer1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
>model/spatial_transformation/spatial_layer1/Tensordot/concat_1ConcatV2Gmodel/spatial_transformation/spatial_layer1/Tensordot/GatherV2:output:0Fmodel/spatial_transformation/spatial_layer1/Tensordot/Const_2:output:0Lmodel/spatial_transformation/spatial_layer1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
5model/spatial_transformation/spatial_layer1/TensordotReshapeFmodel/spatial_transformation/spatial_layer1/Tensordot/MatMul:product:0Gmodel/spatial_transformation/spatial_layer1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@ 
Bmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpReadVariableOpKmodel_spatial_transformation_spatial_layer1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
3model/spatial_transformation/spatial_layer1/BiasAddBiasAdd>model/spatial_transformation/spatial_layer1/Tensordot:output:0Jmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@®
,model/spatial_transformation/activation/TanhTanh<model/spatial_transformation/spatial_layer1/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@“
Dmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOpReadVariableOpMmodel_spatial_transformation_spatial_layer2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0Д
:model/spatial_transformation/spatial_layer2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Л
:model/spatial_transformation/spatial_layer2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ©
;model/spatial_transformation/spatial_layer2/Tensordot/ShapeShape0model/spatial_transformation/activation/Tanh:y:0*
T0*
_output_shapes
::нѕЕ
Cmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
>model/spatial_transformation/spatial_layer2/Tensordot/GatherV2GatherV2Dmodel/spatial_transformation/spatial_layer2/Tensordot/Shape:output:0Cmodel/spatial_transformation/spatial_layer2/Tensordot/free:output:0Lmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:З
Emodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
@model/spatial_transformation/spatial_layer2/Tensordot/GatherV2_1GatherV2Dmodel/spatial_transformation/spatial_layer2/Tensordot/Shape:output:0Cmodel/spatial_transformation/spatial_layer2/Tensordot/axes:output:0Nmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Е
;model/spatial_transformation/spatial_layer2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: т
:model/spatial_transformation/spatial_layer2/Tensordot/ProdProdGmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2:output:0Dmodel/spatial_transformation/spatial_layer2/Tensordot/Const:output:0*
T0*
_output_shapes
: З
=model/spatial_transformation/spatial_layer2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ш
<model/spatial_transformation/spatial_layer2/Tensordot/Prod_1ProdImodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2_1:output:0Fmodel/spatial_transformation/spatial_layer2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: Г
Amodel/spatial_transformation/spatial_layer2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
<model/spatial_transformation/spatial_layer2/Tensordot/concatConcatV2Cmodel/spatial_transformation/spatial_layer2/Tensordot/free:output:0Cmodel/spatial_transformation/spatial_layer2/Tensordot/axes:output:0Jmodel/spatial_transformation/spatial_layer2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:э
;model/spatial_transformation/spatial_layer2/Tensordot/stackPackCmodel/spatial_transformation/spatial_layer2/Tensordot/Prod:output:0Emodel/spatial_transformation/spatial_layer2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ы
?model/spatial_transformation/spatial_layer2/Tensordot/transpose	Transpose0model/spatial_transformation/activation/Tanh:y:0Emodel/spatial_transformation/spatial_layer2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@О
=model/spatial_transformation/spatial_layer2/Tensordot/ReshapeReshapeCmodel/spatial_transformation/spatial_layer2/Tensordot/transpose:y:0Dmodel/spatial_transformation/spatial_layer2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€О
<model/spatial_transformation/spatial_layer2/Tensordot/MatMulMatMulFmodel/spatial_transformation/spatial_layer2/Tensordot/Reshape:output:0Lmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@З
=model/spatial_transformation/spatial_layer2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Е
Cmodel/spatial_transformation/spatial_layer2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
>model/spatial_transformation/spatial_layer2/Tensordot/concat_1ConcatV2Gmodel/spatial_transformation/spatial_layer2/Tensordot/GatherV2:output:0Fmodel/spatial_transformation/spatial_layer2/Tensordot/Const_2:output:0Lmodel/spatial_transformation/spatial_layer2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:З
5model/spatial_transformation/spatial_layer2/TensordotReshapeFmodel/spatial_transformation/spatial_layer2/Tensordot/MatMul:product:0Gmodel/spatial_transformation/spatial_layer2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@ 
Bmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpReadVariableOpKmodel_spatial_transformation_spatial_layer2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
3model/spatial_transformation/spatial_layer2/BiasAddBiasAdd>model/spatial_transformation/spatial_layer2/Tensordot:output:0Jmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@™
.model/spatial_transformation/activation_1/TanhTanh<model/spatial_transformation/spatial_layer2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@»
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0У
.model/multi_head_attention/query/einsum/EinsumEinsum2model/spatial_transformation/activation_1/Tanh:y:0Emodel/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abde∞
3model/multi_head_attention/query/add/ReadVariableOpReadVariableOp<model_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:@*
dtype0б
(model/multi_head_attention/query/add/addAddV27model/multi_head_attention/query/einsum/Einsum:output:0;model/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@ƒ
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpDmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0Е
,model/multi_head_attention/key/einsum/EinsumEinsummodel/BPE/activation_3/Tanh:y:0Cmodel/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdeђ
1model/multi_head_attention/key/add/ReadVariableOpReadVariableOp:model_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:@*
dtype0д
&model/multi_head_attention/key/add/addAddV25model/multi_head_attention/key/einsum/Einsum:output:09model/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@»
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0Д
.model/multi_head_attention/value/einsum/EinsumEinsummodel/bve_layer_2/Tanh:y:0Emodel/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abde∞
3model/multi_head_attention/value/add/ReadVariableOpReadVariableOp<model_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:@*
dtype0к
(model/multi_head_attention/value/add/addAddV27model/multi_head_attention/value/einsum/Einsum:output:0;model/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@e
 model/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >Є
model/multi_head_attention/MulMul,model/multi_head_attention/query/add/add:z:0)model/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@н
(model/multi_head_attention/einsum/EinsumEinsum*model/multi_head_attention/key/add/add:z:0"model/multi_head_attention/Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeЂ
*model/multi_head_attention/softmax/SoftmaxSoftmax1model/multi_head_attention/einsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€∞
+model/multi_head_attention/dropout/IdentityIdentity4model/multi_head_attention/softmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€ъ
*model/multi_head_attention/einsum_1/EinsumEinsum4model/multi_head_attention/dropout/Identity:output:0,model/multi_head_attention/value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcdё
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpQmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0¶
9model/multi_head_attention/attention_output/einsum/EinsumEinsum3model/multi_head_attention/einsum_1/Einsum:output:0Pmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abe¬
>model/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpGmodel_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0ю
3model/multi_head_attention/attention_output/add/addAddV2Bmodel/multi_head_attention/attention_output/einsum/Einsum:output:0Fmodel/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@є
model/add/addAddV22model/spatial_transformation/activation_1/Tanh:y:07model/multi_head_attention/attention_output/add/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Т
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0d
model/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
model/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       j
model/dense/Tensordot/ShapeShapemodel/add/add:z:0*
T0*
_output_shapes
::нѕe
#model/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : л
model/dense/Tensordot/GatherV2GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/free:output:0,model/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
%model/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
 model/dense/Tensordot/GatherV2_1GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/axes:output:0.model/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
model/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Т
model/dense/Tensordot/ProdProd'model/dense/Tensordot/GatherV2:output:0$model/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: g
model/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense/Tensordot/Prod_1Prod)model/dense/Tensordot/GatherV2_1:output:0&model/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: c
!model/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ћ
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Э
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ь
model/dense/Tensordot/transpose	Transposemodel/add/add:z:0%model/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@Ѓ
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Ѓ
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@g
model/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@e
#model/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : „
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:І
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@К
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0†
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@l
model/dense/TanhTanhmodel/dense/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@Ц
&model/dense_1/Tensordot/ReadVariableOpReadVariableOp/model_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0f
model/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       o
model/dense_1/Tensordot/ShapeShapemodel/dense/Tanh:y:0*
T0*
_output_shapes
::нѕg
%model/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : у
 model/dense_1/Tensordot/GatherV2GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/free:output:0.model/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
"model/dense_1/Tensordot/GatherV2_1GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/axes:output:00model/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_1/Tensordot/ProdProd)model/dense_1/Tensordot/GatherV2:output:0&model/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_1/Tensordot/Prod_1Prod+model/dense_1/Tensordot/GatherV2_1:output:0(model/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ‘
model/dense_1/Tensordot/concatConcatV2%model/dense_1/Tensordot/free:output:0%model/dense_1/Tensordot/axes:output:0,model/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_1/Tensordot/stackPack%model/dense_1/Tensordot/Prod:output:0'model/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
!model/dense_1/Tensordot/transpose	Transposemodel/dense/Tanh:y:0'model/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@і
model/dense_1/Tensordot/ReshapeReshape%model/dense_1/Tensordot/transpose:y:0&model/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€і
model/dense_1/Tensordot/MatMulMatMul(model/dense_1/Tensordot/Reshape:output:0.model/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@i
model/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@g
%model/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense_1/Tensordot/concat_1ConcatV2)model/dense_1/Tensordot/GatherV2:output:0(model/dense_1/Tensordot/Const_2:output:0.model/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≠
model/dense_1/TensordotReshape(model/dense_1/Tensordot/MatMul:product:0)model/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@О
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¶
model/dense_1/BiasAddBiasAdd model/dense_1/Tensordot:output:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@p
model/dense_1/TanhTanhmodel/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@ћ
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0ы
0model/multi_head_attention_1/query/einsum/EinsumEinsummodel/dense_1/Tanh:y:0Gmodel/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdeі
5model/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:@*
dtype0з
*model/multi_head_attention_1/query/add/addAddV29model/multi_head_attention_1/query/einsum/Einsum:output:0=model/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@»
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0Й
.model/multi_head_attention_1/key/einsum/EinsumEinsummodel/BPE/activation_3/Tanh:y:0Emodel/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abde∞
3model/multi_head_attention_1/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:@*
dtype0к
(model/multi_head_attention_1/key/add/addAddV27model/multi_head_attention_1/key/einsum/Einsum:output:0;model/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@ћ
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0И
0model/multi_head_attention_1/value/einsum/EinsumEinsummodel/bve_layer_2/Tanh:y:0Gmodel/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdeі
5model/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:@*
dtype0р
*model/multi_head_attention_1/value/add/addAddV29model/multi_head_attention_1/value/einsum/Einsum:output:0=model/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@g
"model/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >Њ
 model/multi_head_attention_1/MulMul.model/multi_head_attention_1/query/add/add:z:0+model/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@у
*model/multi_head_attention_1/einsum/EinsumEinsum,model/multi_head_attention_1/key/add/add:z:0$model/multi_head_attention_1/Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeѓ
,model/multi_head_attention_1/softmax/SoftmaxSoftmax3model/multi_head_attention_1/einsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€і
-model/multi_head_attention_1/dropout/IdentityIdentity6model/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€А
,model/multi_head_attention_1/einsum_1/EinsumEinsum6model/multi_head_attention_1/dropout/Identity:output:0.model/multi_head_attention_1/value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcdв
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0ђ
;model/multi_head_attention_1/attention_output/einsum/EinsumEinsum5model/multi_head_attention_1/einsum_1/Einsum:output:0Rmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abe∆
@model/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0Д
5model/multi_head_attention_1/attention_output/add/addAddV2Dmodel/multi_head_attention_1/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@°
model/add_1/addAddV2model/dense_1/Tanh:y:09model/multi_head_attention_1/attention_output/add/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€@Ц
&model/dense_2/Tensordot/ReadVariableOpReadVariableOp/model_dense_2_tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0f
model/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       n
model/dense_2/Tensordot/ShapeShapemodel/add_1/add:z:0*
T0*
_output_shapes
::нѕg
%model/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : у
 model/dense_2/Tensordot/GatherV2GatherV2&model/dense_2/Tensordot/Shape:output:0%model/dense_2/Tensordot/free:output:0.model/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
"model/dense_2/Tensordot/GatherV2_1GatherV2&model/dense_2/Tensordot/Shape:output:0%model/dense_2/Tensordot/axes:output:00model/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ш
model/dense_2/Tensordot/ProdProd)model/dense_2/Tensordot/GatherV2:output:0&model/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ю
model/dense_2/Tensordot/Prod_1Prod+model/dense_2/Tensordot/GatherV2_1:output:0(model/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ‘
model/dense_2/Tensordot/concatConcatV2%model/dense_2/Tensordot/free:output:0%model/dense_2/Tensordot/axes:output:0,model/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_2/Tensordot/stackPack%model/dense_2/Tensordot/Prod:output:0'model/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ґ
!model/dense_2/Tensordot/transpose	Transposemodel/add_1/add:z:0'model/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@і
model/dense_2/Tensordot/ReshapeReshape%model/dense_2/Tensordot/transpose:y:0&model/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€і
model/dense_2/Tensordot/MatMulMatMul(model/dense_2/Tensordot/Reshape:output:0.model/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@i
model/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@g
%model/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : я
 model/dense_2/Tensordot/concat_1ConcatV2)model/dense_2/Tensordot/GatherV2:output:0(model/dense_2/Tensordot/Const_2:output:0.model/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:≠
model/dense_2/TensordotReshape(model/dense_2/Tensordot/MatMul:product:0)model/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@О
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¶
model/dense_2/BiasAddBiasAdd model/dense_2/Tensordot:output:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@p
model/dense_2/TanhTanhmodel/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   И
model/flatten/ReshapeReshapemodel/dense_2/Tanh:y:0model/flatten/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@М
!model/U/ou1/MatMul/ReadVariableOpReadVariableOp*model_u_ou1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Щ
model/U/ou1/MatMulMatMulmodel/flatten/Reshape:output:0)model/U/ou1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@К
"model/U/ou1/BiasAdd/ReadVariableOpReadVariableOp+model_u_ou1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
model/U/ou1/BiasAddBiasAddmodel/U/ou1/MatMul:product:0*model/U/ou1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@q
model/U/activation_4/TanhTanhmodel/U/ou1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@М
!model/U/ou2/MatMul/ReadVariableOpReadVariableOp*model_u_ou2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Ш
model/U/ou2/MatMulMatMulmodel/U/activation_4/Tanh:y:0)model/U/ou2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@К
"model/U/ou2/BiasAdd/ReadVariableOpReadVariableOp+model_u_ou2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ъ
model/U/ou2/BiasAddBiasAddmodel/U/ou2/MatMul:product:0*model/U/ou2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@q
model/U/activation_5/TanhTanhmodel/U/ou2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$model/output_u/MatMul/ReadVariableOpReadVariableOp-model_output_u_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Ю
model/output_u/MatMulMatMulmodel/U/activation_5/Tanh:y:0,model/output_u/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Р
%model/output_u/BiasAdd/ReadVariableOpReadVariableOp.model_output_u_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
model/output_u/BiasAddBiasAddmodel/output_u/MatMul:product:0-model/output_u/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€n
IdentityIdentitymodel/output_u/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€„
NoOpNoOp,^model/BPE/bpe_layer1/BiasAdd/ReadVariableOp.^model/BPE/bpe_layer1/Tensordot/ReadVariableOp,^model/BPE/bpe_layer2/BiasAdd/ReadVariableOp.^model/BPE/bpe_layer2/Tensordot/ReadVariableOp#^model/U/ou1/BiasAdd/ReadVariableOp"^model/U/ou1/MatMul/ReadVariableOp#^model/U/ou2/BiasAdd/ReadVariableOp"^model/U/ou2/MatMul/ReadVariableOp)^model/bve_layer_1/BiasAdd/ReadVariableOp+^model/bve_layer_1/Tensordot/ReadVariableOp)^model/bve_layer_2/BiasAdd/ReadVariableOp+^model/bve_layer_2/Tensordot/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp'^model/dense_1/Tensordot/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp'^model/dense_2/Tensordot/ReadVariableOp?^model/multi_head_attention/attention_output/add/ReadVariableOpI^model/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2^model/multi_head_attention/key/add/ReadVariableOp<^model/multi_head_attention/key/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/query/add/ReadVariableOp>^model/multi_head_attention/query/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/value/add/ReadVariableOp>^model/multi_head_attention/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_1/attention_output/add/ReadVariableOpK^model/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_1/key/add/ReadVariableOp>^model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/query/add/ReadVariableOp@^model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/value/add/ReadVariableOp@^model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp&^model/output_u/BiasAdd/ReadVariableOp%^model/output_u/MatMul/ReadVariableOpC^model/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpE^model/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpC^model/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpE^model/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesў
÷:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+model/BPE/bpe_layer1/BiasAdd/ReadVariableOp+model/BPE/bpe_layer1/BiasAdd/ReadVariableOp2^
-model/BPE/bpe_layer1/Tensordot/ReadVariableOp-model/BPE/bpe_layer1/Tensordot/ReadVariableOp2Z
+model/BPE/bpe_layer2/BiasAdd/ReadVariableOp+model/BPE/bpe_layer2/BiasAdd/ReadVariableOp2^
-model/BPE/bpe_layer2/Tensordot/ReadVariableOp-model/BPE/bpe_layer2/Tensordot/ReadVariableOp2H
"model/U/ou1/BiasAdd/ReadVariableOp"model/U/ou1/BiasAdd/ReadVariableOp2F
!model/U/ou1/MatMul/ReadVariableOp!model/U/ou1/MatMul/ReadVariableOp2H
"model/U/ou2/BiasAdd/ReadVariableOp"model/U/ou2/BiasAdd/ReadVariableOp2F
!model/U/ou2/MatMul/ReadVariableOp!model/U/ou2/MatMul/ReadVariableOp2T
(model/bve_layer_1/BiasAdd/ReadVariableOp(model/bve_layer_1/BiasAdd/ReadVariableOp2X
*model/bve_layer_1/Tensordot/ReadVariableOp*model/bve_layer_1/Tensordot/ReadVariableOp2T
(model/bve_layer_2/BiasAdd/ReadVariableOp(model/bve_layer_2/BiasAdd/ReadVariableOp2X
*model/bve_layer_2/Tensordot/ReadVariableOp*model/bve_layer_2/Tensordot/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2P
&model/dense_1/Tensordot/ReadVariableOp&model/dense_1/Tensordot/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2P
&model/dense_2/Tensordot/ReadVariableOp&model/dense_2/Tensordot/ReadVariableOp2А
>model/multi_head_attention/attention_output/add/ReadVariableOp>model/multi_head_attention/attention_output/add/ReadVariableOp2Ф
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2f
1model/multi_head_attention/key/add/ReadVariableOp1model/multi_head_attention/key/add/ReadVariableOp2z
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/query/add/ReadVariableOp3model/multi_head_attention/query/add/ReadVariableOp2~
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/value/add/ReadVariableOp3model/multi_head_attention/value/add/ReadVariableOp2~
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp2Д
@model/multi_head_attention_1/attention_output/add/ReadVariableOp@model/multi_head_attention_1/attention_output/add/ReadVariableOp2Ш
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_1/key/add/ReadVariableOp3model/multi_head_attention_1/key/add/ReadVariableOp2~
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/query/add/ReadVariableOp5model/multi_head_attention_1/query/add/ReadVariableOp2В
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/value/add/ReadVariableOp5model/multi_head_attention_1/value/add/ReadVariableOp2В
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2N
%model/output_u/BiasAdd/ReadVariableOp%model/output_u/BiasAdd/ReadVariableOp2L
$model/output_u/MatMul/ReadVariableOp$model/output_u/MatMul/ReadVariableOp2И
Bmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOpBmodel/spatial_transformation/spatial_layer1/BiasAdd/ReadVariableOp2М
Dmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOpDmodel/spatial_transformation/spatial_layer1/Tensordot/ReadVariableOp2И
Bmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOpBmodel/spatial_transformation/spatial_layer2/BiasAdd/ReadVariableOp2М
Dmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOpDmodel/spatial_transformation/spatial_layer2/Tensordot/ReadVariableOp:(,$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input
Ц	
…
#__inference_U_layer_call_fn_4652850
	ou1_input
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCall	ou1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_4652821o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4652846:'#
!
_user_specified_name	4652844:'#
!
_user_specified_name	4652842:'#
!
_user_specified_name	4652840:R N
'
_output_shapes
:€€€€€€€€€@
#
_user_specified_name	ou1_input
ѓ
Ъ
-__inference_bve_layer_1_layer_call_fn_4654072

inputs
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4652974|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654068:'#
!
_user_specified_name	4654066:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
†u
Ь
B__inference_model_layer_call_and_return_conditional_losses_4653497
x_input
t_input
	xbc_layer
	tbc_layer
	ubc_layer%
bve_layer_1_4653328:@!
bve_layer_1_4653330:@
bpe_4653335:@
bpe_4653337:@
bpe_4653339:@@
bpe_4653341:@%
bve_layer_2_4653344:@@!
bve_layer_2_4653346:@0
spatial_transformation_4653349:@,
spatial_transformation_4653351:@0
spatial_transformation_4653353:@@,
spatial_transformation_4653355:@2
multi_head_attention_4653394:@@.
multi_head_attention_4653396:@2
multi_head_attention_4653398:@@.
multi_head_attention_4653400:@2
multi_head_attention_4653402:@@.
multi_head_attention_4653404:@2
multi_head_attention_4653406:@@*
multi_head_attention_4653408:@
dense_4653412:@@
dense_4653414:@!
dense_1_4653417:@@
dense_1_4653419:@4
multi_head_attention_1_4653458:@@0
multi_head_attention_1_4653460:@4
multi_head_attention_1_4653462:@@0
multi_head_attention_1_4653464:@4
multi_head_attention_1_4653466:@@0
multi_head_attention_1_4653468:@4
multi_head_attention_1_4653470:@@,
multi_head_attention_1_4653472:@!
dense_2_4653476:@@
dense_2_4653478:@
	u_4653482:@@
	u_4653484:@
	u_4653486:@@
	u_4653488:@"
output_u_4653491:@
output_u_4653493:
identityИҐBPE/StatefulPartitionedCallҐU/StatefulPartitionedCallҐ#bve_layer_1/StatefulPartitionedCallҐ#bve_layer_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐ,multi_head_attention/StatefulPartitionedCallҐ.multi_head_attention_1/StatefulPartitionedCallҐ output_u/StatefulPartitionedCallҐ.spatial_transformation/StatefulPartitionedCallњ
rescaling/PartitionedCallPartitionedCallx_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_4652906√
rescaling_1/PartitionedCallPartitionedCallt_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4652915“
rescaling_2/PartitionedCallPartitionedCall	xbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4652925“
rescaling_3/PartitionedCallPartitionedCall	tbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4652934Е
concatenate/PartitionedCallPartitionedCall"rescaling/PartitionedCall:output:0$rescaling_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_4652942Т
#bve_layer_1/StatefulPartitionedCallStatefulPartitionedCall	ubc_layerbve_layer_1_4653328bve_layer_1_4653330*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4652974Ш
concatenate_1/PartitionedCallPartitionedCall$rescaling_2/PartitionedCall:output:0$rescaling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4652986№
reshape/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4653000≠
BPE/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0bpe_4653335bpe_4653337bpe_4653339bpe_4653341*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_BPE_layer_call_and_return_conditional_losses_4652721µ
#bve_layer_2/StatefulPartitionedCallStatefulPartitionedCall,bve_layer_1/StatefulPartitionedCall:output:0bve_layer_2_4653344bve_layer_2_4653346*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4653041Р
.spatial_transformation/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0spatial_transformation_4653349spatial_transformation_4653351spatial_transformation_4653353spatial_transformation_4653355*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652565с
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:0,bve_layer_2/StatefulPartitionedCall:output:0$BPE/StatefulPartitionedCall:output:0multi_head_attention_4653394multi_head_attention_4653396multi_head_attention_4653398multi_head_attention_4653400multi_head_attention_4653402multi_head_attention_4653404multi_head_attention_4653406multi_head_attention_4653408*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4653393Я
add/PartitionedCallPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:05multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4653114Д
dense/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0dense_4653412dense_4653414*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4653146Ц
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_4653417dense_1_4653419*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4653182ц
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0,bve_layer_2/StatefulPartitionedCall:output:0$BPE/StatefulPartitionedCall:output:0multi_head_attention_1_4653458multi_head_attention_1_4653460multi_head_attention_1_4653462multi_head_attention_1_4653464multi_head_attention_1_4653466multi_head_attention_1_4653468multi_head_attention_1_4653470multi_head_attention_1_4653472*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4653457Ц
add_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_4653246О
dense_2/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0dense_2_4653476dense_2_4653478*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4653278№
flatten/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_4653289О
U/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0	u_4653482	u_4653484	u_4653486	u_4653488*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_4652837Т
 output_u/StatefulPartitionedCallStatefulPartitionedCall"U/StatefulPartitionedCall:output:0output_u_4653491output_u_4653493*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_u_layer_call_and_return_conditional_losses_4653309x
IdentityIdentity)output_u/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ј
NoOpNoOp^BPE/StatefulPartitionedCall^U/StatefulPartitionedCall$^bve_layer_1/StatefulPartitionedCall$^bve_layer_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall!^output_u/StatefulPartitionedCall/^spatial_transformation/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesў
÷:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
BPE/StatefulPartitionedCallBPE/StatefulPartitionedCall26
U/StatefulPartitionedCallU/StatefulPartitionedCall2J
#bve_layer_1/StatefulPartitionedCall#bve_layer_1/StatefulPartitionedCall2J
#bve_layer_2/StatefulPartitionedCall#bve_layer_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2D
 output_u/StatefulPartitionedCall output_u/StatefulPartitionedCall2`
.spatial_transformation/StatefulPartitionedCall.spatial_transformation/StatefulPartitionedCall:',#
!
_user_specified_name	4653493:'+#
!
_user_specified_name	4653491:'*#
!
_user_specified_name	4653488:')#
!
_user_specified_name	4653486:'(#
!
_user_specified_name	4653484:''#
!
_user_specified_name	4653482:'&#
!
_user_specified_name	4653478:'%#
!
_user_specified_name	4653476:'$#
!
_user_specified_name	4653472:'##
!
_user_specified_name	4653470:'"#
!
_user_specified_name	4653468:'!#
!
_user_specified_name	4653466:' #
!
_user_specified_name	4653464:'#
!
_user_specified_name	4653462:'#
!
_user_specified_name	4653460:'#
!
_user_specified_name	4653458:'#
!
_user_specified_name	4653419:'#
!
_user_specified_name	4653417:'#
!
_user_specified_name	4653414:'#
!
_user_specified_name	4653412:'#
!
_user_specified_name	4653408:'#
!
_user_specified_name	4653406:'#
!
_user_specified_name	4653404:'#
!
_user_specified_name	4653402:'#
!
_user_specified_name	4653400:'#
!
_user_specified_name	4653398:'#
!
_user_specified_name	4653396:'#
!
_user_specified_name	4653394:'#
!
_user_specified_name	4653355:'#
!
_user_specified_name	4653353:'#
!
_user_specified_name	4653351:'#
!
_user_specified_name	4653349:'#
!
_user_specified_name	4653346:'#
!
_user_specified_name	4653344:'
#
!
_user_specified_name	4653341:'	#
!
_user_specified_name	4653339:'#
!
_user_specified_name	4653337:'#
!
_user_specified_name	4653335:'#
!
_user_specified_name	4653330:'#
!
_user_specified_name	4653328:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input
с	
й
8__inference_spatial_transformation_layer_call_fn_4652578
spatial_layer1_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652549s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4652574:'#
!
_user_specified_name	4652572:'#
!
_user_specified_name	4652570:'#
!
_user_specified_name	4652568:a ]
+
_output_shapes
:€€€€€€€€€
.
_user_specified_namespatial_layer1_input
Л
b
F__inference_rescaling_layer_call_and_return_conditional_losses_4653979

inputs
identityH
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  АњN
mulMulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¬
ф
6__inference_multi_head_attention_layer_call_fn_4654166	
query	
value
key
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallqueryvaluekeyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4653091s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	4654162:'	#
!
_user_specified_name	4654160:'#
!
_user_specified_name	4654158:'#
!
_user_specified_name	4654156:'#
!
_user_specified_name	4654154:'#
!
_user_specified_name	4654152:'#
!
_user_specified_name	4654150:'#
!
_user_specified_name	4654148:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
§
G
+__inference_rescaling_layer_call_fn_4653970

inputs
identityі
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_4652906`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
™
J
.__inference_activation_4_layer_call_fn_4654773

inputs
identityЈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_4652797`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
®
I
-__inference_rescaling_1_layer_call_fn_4653984

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4652915`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
—
c
G__inference_activation_layer_call_and_return_conditional_losses_4652505

inputs
identityJ
TanhTanhinputs*
T0*+
_output_shapes
:€€€€€€€€€@T
IdentityIdentityTanh:y:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
¬
ф
6__inference_multi_head_attention_layer_call_fn_4654189	
query	
value
key
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallqueryvaluekeyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4653393s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	4654185:'	#
!
_user_specified_name	4654183:'#
!
_user_specified_name	4654181:'#
!
_user_specified_name	4654179:'#
!
_user_specified_name	4654177:'#
!
_user_specified_name	4654175:'#
!
_user_specified_name	4654173:'#
!
_user_specified_name	4654171:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
Р
В
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4654592

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’
щ
B__inference_dense_layer_call_and_return_conditional_losses_4654313

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@T
TanhTanhBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
IdentityIdentityTanh:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
И
Р
>__inference_U_layer_call_and_return_conditional_losses_4652837
	ou1_input
ou1_4652824:@@
ou1_4652826:@
ou2_4652830:@@
ou2_4652832:@
identityИҐou1/StatefulPartitionedCallҐou2/StatefulPartitionedCallе
ou1/StatefulPartitionedCallStatefulPartitionedCall	ou1_inputou1_4652824ou1_4652826*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou1_layer_call_and_return_conditional_losses_4652787в
activation_4/PartitionedCallPartitionedCall$ou1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_4652797Б
ou2/StatefulPartitionedCallStatefulPartitionedCall%activation_4/PartitionedCall:output:0ou2_4652830ou2_4652832*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou2_layer_call_and_return_conditional_losses_4652808в
activation_5/PartitionedCallPartitionedCall$ou2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_4652818t
IdentityIdentity%activation_5/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@^
NoOpNoOp^ou1/StatefulPartitionedCall^ou2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : : : 2:
ou1/StatefulPartitionedCallou1/StatefulPartitionedCall2:
ou2/StatefulPartitionedCallou2/StatefulPartitionedCall:'#
!
_user_specified_name	4652832:'#
!
_user_specified_name	4652830:'#
!
_user_specified_name	4652826:'#
!
_user_specified_name	4652824:R N
'
_output_shapes
:€€€€€€€€€@
#
_user_specified_name	ou1_input
”
e
I__inference_activation_1_layer_call_and_return_conditional_losses_4654651

inputs
identityJ
TanhTanhinputs*
T0*+
_output_shapes
:€€€€€€€€€@T
IdentityIdentityTanh:y:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
љ.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654225	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
з%
§

%__inference_signature_wrapper_4653965
	xbc_layer
t_input
	tbc_layer
	ubc_layer
x_input
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@@

unknown_10:@ 

unknown_11:@@

unknown_12:@ 

unknown_13:@@

unknown_14:@ 

unknown_15:@@

unknown_16:@ 

unknown_17:@@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@@

unknown_22:@ 

unknown_23:@@

unknown_24:@ 

unknown_25:@@

unknown_26:@ 

unknown_27:@@

unknown_28:@ 

unknown_29:@@

unknown_30:@

unknown_31:@@

unknown_32:@

unknown_33:@@

unknown_34:@

unknown_35:@@

unknown_36:@

unknown_37:@

unknown_38:
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallx_inputt_input	xbc_layer	tbc_layer	ubc_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*J
_read_only_resource_inputs,
*(	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__wrapped_model_4652463o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesў
÷:€€€€€€€€€€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:',#
!
_user_specified_name	4653961:'+#
!
_user_specified_name	4653959:'*#
!
_user_specified_name	4653957:')#
!
_user_specified_name	4653955:'(#
!
_user_specified_name	4653953:''#
!
_user_specified_name	4653951:'&#
!
_user_specified_name	4653949:'%#
!
_user_specified_name	4653947:'$#
!
_user_specified_name	4653945:'##
!
_user_specified_name	4653943:'"#
!
_user_specified_name	4653941:'!#
!
_user_specified_name	4653939:' #
!
_user_specified_name	4653937:'#
!
_user_specified_name	4653935:'#
!
_user_specified_name	4653933:'#
!
_user_specified_name	4653931:'#
!
_user_specified_name	4653929:'#
!
_user_specified_name	4653927:'#
!
_user_specified_name	4653925:'#
!
_user_specified_name	4653923:'#
!
_user_specified_name	4653921:'#
!
_user_specified_name	4653919:'#
!
_user_specified_name	4653917:'#
!
_user_specified_name	4653915:'#
!
_user_specified_name	4653913:'#
!
_user_specified_name	4653911:'#
!
_user_specified_name	4653909:'#
!
_user_specified_name	4653907:'#
!
_user_specified_name	4653905:'#
!
_user_specified_name	4653903:'#
!
_user_specified_name	4653901:'#
!
_user_specified_name	4653899:'#
!
_user_specified_name	4653897:'#
!
_user_specified_name	4653895:'
#
!
_user_specified_name	4653893:'	#
!
_user_specified_name	4653891:'#
!
_user_specified_name	4653889:'#
!
_user_specified_name	4653887:'#
!
_user_specified_name	4653885:'#
!
_user_specified_name	4653883:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:_ [
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer
њ.
Е
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4654471	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
џ
d
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4652925

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @S
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Q
Cast_1CastCast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: b
mulMulinputsCast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
addAddV2mul:z:0
Cast_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€\
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Й&
¶

'__inference_model_layer_call_fn_4653675
x_input
t_input
	xbc_layer
	tbc_layer
	ubc_layer
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@@

unknown_10:@ 

unknown_11:@@

unknown_12:@ 

unknown_13:@@

unknown_14:@ 

unknown_15:@@

unknown_16:@ 

unknown_17:@@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@@

unknown_22:@ 

unknown_23:@@

unknown_24:@ 

unknown_25:@@

unknown_26:@ 

unknown_27:@@

unknown_28:@ 

unknown_29:@@

unknown_30:@

unknown_31:@@

unknown_32:@

unknown_33:@@

unknown_34:@

unknown_35:@@

unknown_36:@

unknown_37:@

unknown_38:
identityИҐStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallx_inputt_input	xbc_layer	tbc_layer	ubc_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*J
_read_only_resource_inputs,
*(	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_4653497o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesў
÷:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:',#
!
_user_specified_name	4653671:'+#
!
_user_specified_name	4653669:'*#
!
_user_specified_name	4653667:')#
!
_user_specified_name	4653665:'(#
!
_user_specified_name	4653663:''#
!
_user_specified_name	4653661:'&#
!
_user_specified_name	4653659:'%#
!
_user_specified_name	4653657:'$#
!
_user_specified_name	4653655:'##
!
_user_specified_name	4653653:'"#
!
_user_specified_name	4653651:'!#
!
_user_specified_name	4653649:' #
!
_user_specified_name	4653647:'#
!
_user_specified_name	4653645:'#
!
_user_specified_name	4653643:'#
!
_user_specified_name	4653641:'#
!
_user_specified_name	4653639:'#
!
_user_specified_name	4653637:'#
!
_user_specified_name	4653635:'#
!
_user_specified_name	4653633:'#
!
_user_specified_name	4653631:'#
!
_user_specified_name	4653629:'#
!
_user_specified_name	4653627:'#
!
_user_specified_name	4653625:'#
!
_user_specified_name	4653623:'#
!
_user_specified_name	4653621:'#
!
_user_specified_name	4653619:'#
!
_user_specified_name	4653617:'#
!
_user_specified_name	4653615:'#
!
_user_specified_name	4653613:'#
!
_user_specified_name	4653611:'#
!
_user_specified_name	4653609:'#
!
_user_specified_name	4653607:'#
!
_user_specified_name	4653605:'
#
!
_user_specified_name	4653603:'	#
!
_user_specified_name	4653601:'#
!
_user_specified_name	4653599:'#
!
_user_specified_name	4653597:'#
!
_user_specified_name	4653595:'#
!
_user_specified_name	4653593:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input
„
ы
D__inference_dense_1_layer_call_and_return_conditional_losses_4654353

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@T
TanhTanhBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
IdentityIdentityTanh:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
џ
d
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4654019

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @S
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Q
Cast_1CastCast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: b
mulMulinputsCast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
addAddV2mul:z:0
Cast_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€\
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
µ
Q
%__inference_add_layer_call_fn_4654267
inputs_0
inputs_1
identityњ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4653114d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€@:€€€€€€€€€@:UQ
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_1:U Q
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_0
†u
Ь
B__inference_model_layer_call_and_return_conditional_losses_4653316
x_input
t_input
	xbc_layer
	tbc_layer
	ubc_layer%
bve_layer_1_4652975:@!
bve_layer_1_4652977:@
bpe_4653002:@
bpe_4653004:@
bpe_4653006:@@
bpe_4653008:@%
bve_layer_2_4653042:@@!
bve_layer_2_4653044:@0
spatial_transformation_4653047:@,
spatial_transformation_4653049:@0
spatial_transformation_4653051:@@,
spatial_transformation_4653053:@2
multi_head_attention_4653092:@@.
multi_head_attention_4653094:@2
multi_head_attention_4653096:@@.
multi_head_attention_4653098:@2
multi_head_attention_4653100:@@.
multi_head_attention_4653102:@2
multi_head_attention_4653104:@@*
multi_head_attention_4653106:@
dense_4653147:@@
dense_4653149:@!
dense_1_4653183:@@
dense_1_4653185:@4
multi_head_attention_1_4653224:@@0
multi_head_attention_1_4653226:@4
multi_head_attention_1_4653228:@@0
multi_head_attention_1_4653230:@4
multi_head_attention_1_4653232:@@0
multi_head_attention_1_4653234:@4
multi_head_attention_1_4653236:@@,
multi_head_attention_1_4653238:@!
dense_2_4653279:@@
dense_2_4653281:@
	u_4653291:@@
	u_4653293:@
	u_4653295:@@
	u_4653297:@"
output_u_4653310:@
output_u_4653312:
identityИҐBPE/StatefulPartitionedCallҐU/StatefulPartitionedCallҐ#bve_layer_1/StatefulPartitionedCallҐ#bve_layer_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐ,multi_head_attention/StatefulPartitionedCallҐ.multi_head_attention_1/StatefulPartitionedCallҐ output_u/StatefulPartitionedCallҐ.spatial_transformation/StatefulPartitionedCallњ
rescaling/PartitionedCallPartitionedCallx_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_layer_call_and_return_conditional_losses_4652906√
rescaling_1/PartitionedCallPartitionedCallt_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4652915“
rescaling_2/PartitionedCallPartitionedCall	xbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4652925“
rescaling_3/PartitionedCallPartitionedCall	tbc_layer*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4652934Е
concatenate/PartitionedCallPartitionedCall"rescaling/PartitionedCall:output:0$rescaling_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_4652942Т
#bve_layer_1/StatefulPartitionedCallStatefulPartitionedCall	ubc_layerbve_layer_1_4652975bve_layer_1_4652977*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4652974Ш
concatenate_1/PartitionedCallPartitionedCall$rescaling_2/PartitionedCall:output:0$rescaling_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4652986№
reshape/PartitionedCallPartitionedCall$concatenate/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4653000≠
BPE/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0bpe_4653002bpe_4653004bpe_4653006bpe_4653008*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_BPE_layer_call_and_return_conditional_losses_4652705µ
#bve_layer_2/StatefulPartitionedCallStatefulPartitionedCall,bve_layer_1/StatefulPartitionedCall:output:0bve_layer_2_4653042bve_layer_2_4653044*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4653041Р
.spatial_transformation/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0spatial_transformation_4653047spatial_transformation_4653049spatial_transformation_4653051spatial_transformation_4653053*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652549с
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:0,bve_layer_2/StatefulPartitionedCall:output:0$BPE/StatefulPartitionedCall:output:0multi_head_attention_4653092multi_head_attention_4653094multi_head_attention_4653096multi_head_attention_4653098multi_head_attention_4653100multi_head_attention_4653102multi_head_attention_4653104multi_head_attention_4653106*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4653091Я
add/PartitionedCallPartitionedCall7spatial_transformation/StatefulPartitionedCall:output:05multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4653114Д
dense/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0dense_4653147dense_4653149*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4653146Ц
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_4653183dense_1_4653185*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4653182ц
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0,bve_layer_2/StatefulPartitionedCall:output:0$BPE/StatefulPartitionedCall:output:0multi_head_attention_1_4653224multi_head_attention_1_4653226multi_head_attention_1_4653228multi_head_attention_1_4653230multi_head_attention_1_4653232multi_head_attention_1_4653234multi_head_attention_1_4653236multi_head_attention_1_4653238*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4653223Ц
add_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_4653246О
dense_2/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0dense_2_4653279dense_2_4653281*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4653278№
flatten/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_4653289О
U/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0	u_4653291	u_4653293	u_4653295	u_4653297*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_4652821Т
 output_u/StatefulPartitionedCallStatefulPartitionedCall"U/StatefulPartitionedCall:output:0output_u_4653310output_u_4653312*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_u_layer_call_and_return_conditional_losses_4653309x
IdentityIdentity)output_u/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ј
NoOpNoOp^BPE/StatefulPartitionedCall^U/StatefulPartitionedCall$^bve_layer_1/StatefulPartitionedCall$^bve_layer_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall!^output_u/StatefulPartitionedCall/^spatial_transformation/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesў
÷:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
BPE/StatefulPartitionedCallBPE/StatefulPartitionedCall26
U/StatefulPartitionedCallU/StatefulPartitionedCall2J
#bve_layer_1/StatefulPartitionedCall#bve_layer_1/StatefulPartitionedCall2J
#bve_layer_2/StatefulPartitionedCall#bve_layer_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2D
 output_u/StatefulPartitionedCall output_u/StatefulPartitionedCall2`
.spatial_transformation/StatefulPartitionedCall.spatial_transformation/StatefulPartitionedCall:',#
!
_user_specified_name	4653312:'+#
!
_user_specified_name	4653310:'*#
!
_user_specified_name	4653297:')#
!
_user_specified_name	4653295:'(#
!
_user_specified_name	4653293:''#
!
_user_specified_name	4653291:'&#
!
_user_specified_name	4653281:'%#
!
_user_specified_name	4653279:'$#
!
_user_specified_name	4653238:'##
!
_user_specified_name	4653236:'"#
!
_user_specified_name	4653234:'!#
!
_user_specified_name	4653232:' #
!
_user_specified_name	4653230:'#
!
_user_specified_name	4653228:'#
!
_user_specified_name	4653226:'#
!
_user_specified_name	4653224:'#
!
_user_specified_name	4653185:'#
!
_user_specified_name	4653183:'#
!
_user_specified_name	4653149:'#
!
_user_specified_name	4653147:'#
!
_user_specified_name	4653106:'#
!
_user_specified_name	4653104:'#
!
_user_specified_name	4653102:'#
!
_user_specified_name	4653100:'#
!
_user_specified_name	4653098:'#
!
_user_specified_name	4653096:'#
!
_user_specified_name	4653094:'#
!
_user_specified_name	4653092:'#
!
_user_specified_name	4653053:'#
!
_user_specified_name	4653051:'#
!
_user_specified_name	4653049:'#
!
_user_specified_name	4653047:'#
!
_user_specified_name	4653044:'#
!
_user_specified_name	4653042:'
#
!
_user_specified_name	4653008:'	#
!
_user_specified_name	4653006:'#
!
_user_specified_name	4653004:'#
!
_user_specified_name	4653002:'#
!
_user_specified_name	4652977:'#
!
_user_specified_name	4652975:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input
∆
ц
8__inference_multi_head_attention_1_layer_call_fn_4654376	
query	
value
key
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
identityИҐStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallqueryvaluekeyunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4653223s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'
#
!
_user_specified_name	4654372:'	#
!
_user_specified_name	4654370:'#
!
_user_specified_name	4654368:'#
!
_user_specified_name	4654366:'#
!
_user_specified_name	4654364:'#
!
_user_specified_name	4654362:'#
!
_user_specified_name	4654360:'#
!
_user_specified_name	4654358:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
∆
т
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652549
spatial_layer1_input(
spatial_layer1_4652496:@$
spatial_layer1_4652498:@(
spatial_layer2_4652537:@@$
spatial_layer2_4652539:@
identityИҐ&spatial_layer1/StatefulPartitionedCallҐ&spatial_layer2/StatefulPartitionedCall†
&spatial_layer1/StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputspatial_layer1_4652496spatial_layer1_4652498*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4652495н
activation/PartitionedCallPartitionedCall/spatial_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4652505ѓ
&spatial_layer2/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0spatial_layer2_4652537spatial_layer2_4652539*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4652536с
activation_1/PartitionedCallPartitionedCall/spatial_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4652546x
IdentityIdentity%activation_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@t
NoOpNoOp'^spatial_layer1/StatefulPartitionedCall'^spatial_layer2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : 2P
&spatial_layer1/StatefulPartitionedCall&spatial_layer1/StatefulPartitionedCall2P
&spatial_layer2/StatefulPartitionedCall&spatial_layer2/StatefulPartitionedCall:'#
!
_user_specified_name	4652539:'#
!
_user_specified_name	4652537:'#
!
_user_specified_name	4652498:'#
!
_user_specified_name	4652496:a ]
+
_output_shapes
:€€€€€€€€€
.
_user_specified_namespatial_layer1_input
ч
e
I__inference_activation_3_layer_call_and_return_conditional_losses_4654749

inputs
identityS
TanhTanhinputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@]
IdentityIdentityTanh:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ќ
j
@__inference_add_layer_call_and_return_conditional_losses_4653114

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:€€€€€€€€€@S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€@:€€€€€€€€€@:SO
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ь
€
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4654103

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@]
TanhTanhBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@d
IdentityIdentityTanh:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
№
I
-__inference_rescaling_3_layer_call_fn_4654024

inputs
identity√
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4652934m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є
r
H__inference_concatenate_layer_call_and_return_conditional_losses_4652942

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
„
ы
D__inference_dense_1_layer_call_and_return_conditional_losses_4653182

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@T
TanhTanhBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
IdentityIdentityTanh:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
њ.
Е
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4653457	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
»
d
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4652915

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  АњU
mulMulinputsCast/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
l
B__inference_add_1_layer_call_and_return_conditional_losses_4653246

inputs
inputs_1
identityT
addAddV2inputsinputs_1*
T0*+
_output_shapes
:€€€€€€€€€@S
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€@:€€€€€€€€€@:SO
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Г
Ц
)__inference_dense_2_layer_call_fn_4654492

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_4653278s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654488:'#
!
_user_specified_name	4654486:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
у	
с
@__inference_ou1_layer_call_and_return_conditional_losses_4652787

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
х
Ч
*__inference_output_u_layer_call_fn_4654543

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_output_u_layer_call_and_return_conditional_losses_4653309o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654539:'#
!
_user_specified_name	4654537:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
√
e
I__inference_activation_4_layer_call_and_return_conditional_losses_4652797

inputs
identityF
TanhTanhinputs*
T0*'
_output_shapes
:€€€€€€€€€@P
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
у	
с
@__inference_ou2_layer_call_and_return_conditional_losses_4652808

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
њ.
Е
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4654435	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
≠
Щ
,__inference_bpe_layer1_layer_call_fn_4654660

inputs
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4652651|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654656:'#
!
_user_specified_name	4654654:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
v
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4654063
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Д
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
IdentityIdentityconcat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:^Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_1:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
ё
J
.__inference_activation_3_layer_call_fn_4654744

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_4652702m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Љ
`
D__inference_flatten_layer_call_and_return_conditional_losses_4653289

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:€€€€€€€€€@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ч
e
I__inference_activation_2_layer_call_and_return_conditional_losses_4654700

inputs
identityS
TanhTanhinputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@]
IdentityIdentityTanh:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
љ.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4653393	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
кґ
Љ&
 __inference__traced_save_4655073
file_prefix;
)read_disablecopyonread_bve_layer_1_kernel:@7
)read_1_disablecopyonread_bve_layer_1_bias:@=
+read_2_disablecopyonread_bve_layer_2_kernel:@@7
)read_3_disablecopyonread_bve_layer_2_bias:@7
%read_4_disablecopyonread_dense_kernel:@@1
#read_5_disablecopyonread_dense_bias:@9
'read_6_disablecopyonread_dense_1_kernel:@@3
%read_7_disablecopyonread_dense_1_bias:@9
'read_8_disablecopyonread_dense_2_kernel:@@3
%read_9_disablecopyonread_dense_2_bias:@;
)read_10_disablecopyonread_output_u_kernel:@5
'read_11_disablecopyonread_output_u_bias:A
/read_12_disablecopyonread_spatial_layer1_kernel:@;
-read_13_disablecopyonread_spatial_layer1_bias:@A
/read_14_disablecopyonread_spatial_layer2_kernel:@@;
-read_15_disablecopyonread_spatial_layer2_bias:@=
+read_16_disablecopyonread_bpe_layer1_kernel:@7
)read_17_disablecopyonread_bpe_layer1_bias:@=
+read_18_disablecopyonread_bpe_layer2_kernel:@@7
)read_19_disablecopyonread_bpe_layer2_bias:@Q
;read_20_disablecopyonread_multi_head_attention_query_kernel:@@K
9read_21_disablecopyonread_multi_head_attention_query_bias:@O
9read_22_disablecopyonread_multi_head_attention_key_kernel:@@I
7read_23_disablecopyonread_multi_head_attention_key_bias:@Q
;read_24_disablecopyonread_multi_head_attention_value_kernel:@@K
9read_25_disablecopyonread_multi_head_attention_value_bias:@\
Fread_26_disablecopyonread_multi_head_attention_attention_output_kernel:@@R
Dread_27_disablecopyonread_multi_head_attention_attention_output_bias:@S
=read_28_disablecopyonread_multi_head_attention_1_query_kernel:@@M
;read_29_disablecopyonread_multi_head_attention_1_query_bias:@Q
;read_30_disablecopyonread_multi_head_attention_1_key_kernel:@@K
9read_31_disablecopyonread_multi_head_attention_1_key_bias:@S
=read_32_disablecopyonread_multi_head_attention_1_value_kernel:@@M
;read_33_disablecopyonread_multi_head_attention_1_value_bias:@^
Hread_34_disablecopyonread_multi_head_attention_1_attention_output_kernel:@@T
Fread_35_disablecopyonread_multi_head_attention_1_attention_output_bias:@6
$read_36_disablecopyonread_ou1_kernel:@@0
"read_37_disablecopyonread_ou1_bias:@6
$read_38_disablecopyonread_ou2_kernel:@@0
"read_39_disablecopyonread_ou2_bias:@
savev2_const
identity_81ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: {
Read/DisableCopyOnReadDisableCopyOnRead)read_disablecopyonread_bve_layer_1_kernel"/device:CPU:0*
_output_shapes
 •
Read/ReadVariableOpReadVariableOp)read_disablecopyonread_bve_layer_1_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:@}
Read_1/DisableCopyOnReadDisableCopyOnRead)read_1_disablecopyonread_bve_layer_1_bias"/device:CPU:0*
_output_shapes
 •
Read_1/ReadVariableOpReadVariableOp)read_1_disablecopyonread_bve_layer_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_2/DisableCopyOnReadDisableCopyOnRead+read_2_disablecopyonread_bve_layer_2_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_2/ReadVariableOpReadVariableOp+read_2_disablecopyonread_bve_layer_2_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:@@}
Read_3/DisableCopyOnReadDisableCopyOnRead)read_3_disablecopyonread_bve_layer_2_bias"/device:CPU:0*
_output_shapes
 •
Read_3/ReadVariableOpReadVariableOp)read_3_disablecopyonread_bve_layer_2_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 •
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_dense_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 Я
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_dense_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 І
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:@@y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 °
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_1_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 І
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_2_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:@@y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 °
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_2_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_output_u_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_output_u_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:@|
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_output_u_bias"/device:CPU:0*
_output_shapes
 •
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_output_u_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:Д
Read_12/DisableCopyOnReadDisableCopyOnRead/read_12_disablecopyonread_spatial_layer1_kernel"/device:CPU:0*
_output_shapes
 ±
Read_12/ReadVariableOpReadVariableOp/read_12_disablecopyonread_spatial_layer1_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:@В
Read_13/DisableCopyOnReadDisableCopyOnRead-read_13_disablecopyonread_spatial_layer1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_13/ReadVariableOpReadVariableOp-read_13_disablecopyonread_spatial_layer1_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_14/DisableCopyOnReadDisableCopyOnRead/read_14_disablecopyonread_spatial_layer2_kernel"/device:CPU:0*
_output_shapes
 ±
Read_14/ReadVariableOpReadVariableOp/read_14_disablecopyonread_spatial_layer2_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@@В
Read_15/DisableCopyOnReadDisableCopyOnRead-read_15_disablecopyonread_spatial_layer2_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_15/ReadVariableOpReadVariableOp-read_15_disablecopyonread_spatial_layer2_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@А
Read_16/DisableCopyOnReadDisableCopyOnRead+read_16_disablecopyonread_bpe_layer1_kernel"/device:CPU:0*
_output_shapes
 ≠
Read_16/ReadVariableOpReadVariableOp+read_16_disablecopyonread_bpe_layer1_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:@~
Read_17/DisableCopyOnReadDisableCopyOnRead)read_17_disablecopyonread_bpe_layer1_bias"/device:CPU:0*
_output_shapes
 І
Read_17/ReadVariableOpReadVariableOp)read_17_disablecopyonread_bpe_layer1_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@А
Read_18/DisableCopyOnReadDisableCopyOnRead+read_18_disablecopyonread_bpe_layer2_kernel"/device:CPU:0*
_output_shapes
 ≠
Read_18/ReadVariableOpReadVariableOp+read_18_disablecopyonread_bpe_layer2_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:@@~
Read_19/DisableCopyOnReadDisableCopyOnRead)read_19_disablecopyonread_bpe_layer2_bias"/device:CPU:0*
_output_shapes
 І
Read_19/ReadVariableOpReadVariableOp)read_19_disablecopyonread_bpe_layer2_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@Р
Read_20/DisableCopyOnReadDisableCopyOnRead;read_20_disablecopyonread_multi_head_attention_query_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_20/ReadVariableOpReadVariableOp;read_20_disablecopyonread_multi_head_attention_query_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@О
Read_21/DisableCopyOnReadDisableCopyOnRead9read_21_disablecopyonread_multi_head_attention_query_bias"/device:CPU:0*
_output_shapes
 ї
Read_21/ReadVariableOpReadVariableOp9read_21_disablecopyonread_multi_head_attention_query_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes

:@О
Read_22/DisableCopyOnReadDisableCopyOnRead9read_22_disablecopyonread_multi_head_attention_key_kernel"/device:CPU:0*
_output_shapes
 њ
Read_22/ReadVariableOpReadVariableOp9read_22_disablecopyonread_multi_head_attention_key_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@М
Read_23/DisableCopyOnReadDisableCopyOnRead7read_23_disablecopyonread_multi_head_attention_key_bias"/device:CPU:0*
_output_shapes
 є
Read_23/ReadVariableOpReadVariableOp7read_23_disablecopyonread_multi_head_attention_key_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:@Р
Read_24/DisableCopyOnReadDisableCopyOnRead;read_24_disablecopyonread_multi_head_attention_value_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_24/ReadVariableOpReadVariableOp;read_24_disablecopyonread_multi_head_attention_value_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@О
Read_25/DisableCopyOnReadDisableCopyOnRead9read_25_disablecopyonread_multi_head_attention_value_bias"/device:CPU:0*
_output_shapes
 ї
Read_25/ReadVariableOpReadVariableOp9read_25_disablecopyonread_multi_head_attention_value_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ы
Read_26/DisableCopyOnReadDisableCopyOnReadFread_26_disablecopyonread_multi_head_attention_attention_output_kernel"/device:CPU:0*
_output_shapes
 ћ
Read_26/ReadVariableOpReadVariableOpFread_26_disablecopyonread_multi_head_attention_attention_output_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@Щ
Read_27/DisableCopyOnReadDisableCopyOnReadDread_27_disablecopyonread_multi_head_attention_attention_output_bias"/device:CPU:0*
_output_shapes
 ¬
Read_27/ReadVariableOpReadVariableOpDread_27_disablecopyonread_multi_head_attention_attention_output_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:@Т
Read_28/DisableCopyOnReadDisableCopyOnRead=read_28_disablecopyonread_multi_head_attention_1_query_kernel"/device:CPU:0*
_output_shapes
 √
Read_28/ReadVariableOpReadVariableOp=read_28_disablecopyonread_multi_head_attention_1_query_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@Р
Read_29/DisableCopyOnReadDisableCopyOnRead;read_29_disablecopyonread_multi_head_attention_1_query_bias"/device:CPU:0*
_output_shapes
 љ
Read_29/ReadVariableOpReadVariableOp;read_29_disablecopyonread_multi_head_attention_1_query_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes

:@Р
Read_30/DisableCopyOnReadDisableCopyOnRead;read_30_disablecopyonread_multi_head_attention_1_key_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_30/ReadVariableOpReadVariableOp;read_30_disablecopyonread_multi_head_attention_1_key_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@О
Read_31/DisableCopyOnReadDisableCopyOnRead9read_31_disablecopyonread_multi_head_attention_1_key_bias"/device:CPU:0*
_output_shapes
 ї
Read_31/ReadVariableOpReadVariableOp9read_31_disablecopyonread_multi_head_attention_1_key_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:@Т
Read_32/DisableCopyOnReadDisableCopyOnRead=read_32_disablecopyonread_multi_head_attention_1_value_kernel"/device:CPU:0*
_output_shapes
 √
Read_32/ReadVariableOpReadVariableOp=read_32_disablecopyonread_multi_head_attention_1_value_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@Р
Read_33/DisableCopyOnReadDisableCopyOnRead;read_33_disablecopyonread_multi_head_attention_1_value_bias"/device:CPU:0*
_output_shapes
 љ
Read_33/ReadVariableOpReadVariableOp;read_33_disablecopyonread_multi_head_attention_1_value_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes

:@Э
Read_34/DisableCopyOnReadDisableCopyOnReadHread_34_disablecopyonread_multi_head_attention_1_attention_output_kernel"/device:CPU:0*
_output_shapes
 ќ
Read_34/ReadVariableOpReadVariableOpHread_34_disablecopyonread_multi_head_attention_1_attention_output_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@@*
dtype0s
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@@i
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*"
_output_shapes
:@@Ы
Read_35/DisableCopyOnReadDisableCopyOnReadFread_35_disablecopyonread_multi_head_attention_1_attention_output_bias"/device:CPU:0*
_output_shapes
 ƒ
Read_35/ReadVariableOpReadVariableOpFread_35_disablecopyonread_multi_head_attention_1_attention_output_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_36/DisableCopyOnReadDisableCopyOnRead$read_36_disablecopyonread_ou1_kernel"/device:CPU:0*
_output_shapes
 ¶
Read_36/ReadVariableOpReadVariableOp$read_36_disablecopyonread_ou1_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_37/DisableCopyOnReadDisableCopyOnRead"read_37_disablecopyonread_ou1_bias"/device:CPU:0*
_output_shapes
 †
Read_37/ReadVariableOpReadVariableOp"read_37_disablecopyonread_ou1_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_38/DisableCopyOnReadDisableCopyOnRead$read_38_disablecopyonread_ou2_kernel"/device:CPU:0*
_output_shapes
 ¶
Read_38/ReadVariableOpReadVariableOp$read_38_disablecopyonread_ou2_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes

:@@w
Read_39/DisableCopyOnReadDisableCopyOnRead"read_39_disablecopyonread_ou2_bias"/device:CPU:0*
_output_shapes
 †
Read_39/ReadVariableOpReadVariableOp"read_39_disablecopyonread_ou2_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ф
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*љ
value≥B∞)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHњ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B л
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *7
dtypes-
+2)Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_80Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_81IdentityIdentity_80:output:0^NoOp*
T0*
_output_shapes
: з
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_81Identity_81:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=)9

_output_shapes
: 

_user_specified_nameConst:(($
"
_user_specified_name
ou2/bias:*'&
$
_user_specified_name
ou2/kernel:(&$
"
_user_specified_name
ou1/bias:*%&
$
_user_specified_name
ou1/kernel:L$H
F
_user_specified_name.,multi_head_attention_1/attention_output/bias:N#J
H
_user_specified_name0.multi_head_attention_1/attention_output/kernel:A"=
;
_user_specified_name#!multi_head_attention_1/value/bias:C!?
=
_user_specified_name%#multi_head_attention_1/value/kernel:? ;
9
_user_specified_name!multi_head_attention_1/key/bias:A=
;
_user_specified_name#!multi_head_attention_1/key/kernel:A=
;
_user_specified_name#!multi_head_attention_1/query/bias:C?
=
_user_specified_name%#multi_head_attention_1/query/kernel:JF
D
_user_specified_name,*multi_head_attention/attention_output/bias:LH
F
_user_specified_name.,multi_head_attention/attention_output/kernel:?;
9
_user_specified_name!multi_head_attention/value/bias:A=
;
_user_specified_name#!multi_head_attention/value/kernel:=9
7
_user_specified_namemulti_head_attention/key/bias:?;
9
_user_specified_name!multi_head_attention/key/kernel:?;
9
_user_specified_name!multi_head_attention/query/bias:A=
;
_user_specified_name#!multi_head_attention/query/kernel:/+
)
_user_specified_namebpe_layer2/bias:1-
+
_user_specified_namebpe_layer2/kernel:/+
)
_user_specified_namebpe_layer1/bias:1-
+
_user_specified_namebpe_layer1/kernel:3/
-
_user_specified_namespatial_layer2/bias:51
/
_user_specified_namespatial_layer2/kernel:3/
-
_user_specified_namespatial_layer1/bias:51
/
_user_specified_namespatial_layer1/kernel:-)
'
_user_specified_nameoutput_u/bias:/+
)
_user_specified_nameoutput_u/kernel:,
(
&
_user_specified_namedense_2/bias:.	*
(
_user_specified_namedense_2/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:0,
*
_user_specified_namebve_layer_2/bias:2.
,
_user_specified_namebve_layer_2/kernel:0,
*
_user_specified_namebve_layer_1/bias:2.
,
_user_specified_namebve_layer_1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ч
e
I__inference_activation_2_layer_call_and_return_conditional_losses_4652661

inputs
identityS
TanhTanhinputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@]
IdentityIdentityTanh:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Љ
`
D__inference_flatten_layer_call_and_return_conditional_losses_4654534

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:€€€€€€€€€@X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
√
e
I__inference_activation_5_layer_call_and_return_conditional_losses_4654807

inputs
identityF
TanhTanhinputs*
T0*'
_output_shapes
:€€€€€€€€€@P
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
®
E
)__inference_reshape_layer_call_fn_4654037

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_reshape_layer_call_and_return_conditional_losses_4653000d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
„
ы
D__inference_dense_2_layer_call_and_return_conditional_losses_4654523

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@T
TanhTanhBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
IdentityIdentityTanh:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ƒ
ю
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4652651

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
љ.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4653091	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
Ї
J
.__inference_activation_1_layer_call_fn_4654646

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4652546d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ƒ
ю
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4654739

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
С
Э
0__inference_spatial_layer2_layer_call_fn_4654611

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4652536s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654607:'#
!
_user_specified_name	4654605:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ґ
H
,__inference_activation_layer_call_fn_4654597

inputs
identityє
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4652505d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
є
S
'__inference_add_1_layer_call_fn_4654477
inputs_0
inputs_1
identityЅ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_4653246d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:€€€€€€€€€@:€€€€€€€€€@:UQ
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_1:U Q
+
_output_shapes
:€€€€€€€€€@
"
_user_specified_name
inputs_0
С
Э
0__inference_spatial_layer1_layer_call_fn_4654562

inputs
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4652495s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654558:'#
!
_user_specified_name	4654556:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
№
I
-__inference_rescaling_2_layer_call_fn_4654010

inputs
identity√
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4652925m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
њ.
Е
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4653223	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
Й
d
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4652934

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањb
mulMulinputsCast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€g
addAddV2mul:z:0Cast_1/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€\
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
„
ы
D__inference_dense_2_layer_call_and_return_conditional_losses_4653278

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@T
TanhTanhBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
IdentityIdentityTanh:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
И
Р
>__inference_U_layer_call_and_return_conditional_losses_4652821
	ou1_input
ou1_4652788:@@
ou1_4652790:@
ou2_4652809:@@
ou2_4652811:@
identityИҐou1/StatefulPartitionedCallҐou2/StatefulPartitionedCallе
ou1/StatefulPartitionedCallStatefulPartitionedCall	ou1_inputou1_4652788ou1_4652790*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou1_layer_call_and_return_conditional_losses_4652787в
activation_4/PartitionedCallPartitionedCall$ou1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_4_layer_call_and_return_conditional_losses_4652797Б
ou2/StatefulPartitionedCallStatefulPartitionedCall%activation_4/PartitionedCall:output:0ou2_4652809ou2_4652811*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou2_layer_call_and_return_conditional_losses_4652808в
activation_5/PartitionedCallPartitionedCall$ou2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_4652818t
IdentityIdentity%activation_5/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@^
NoOpNoOp^ou1/StatefulPartitionedCall^ou2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : : : 2:
ou1/StatefulPartitionedCallou1/StatefulPartitionedCall2:
ou2/StatefulPartitionedCallou2/StatefulPartitionedCall:'#
!
_user_specified_name	4652811:'#
!
_user_specified_name	4652809:'#
!
_user_specified_name	4652790:'#
!
_user_specified_name	4652788:R N
'
_output_shapes
:€€€€€€€€€@
#
_user_specified_name	ou1_input
у	
с
@__inference_ou1_layer_call_and_return_conditional_losses_4654768

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ƒ
ю
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4654690

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≠
Щ
,__inference_bpe_layer2_layer_call_fn_4654709

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4652692|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654705:'#
!
_user_specified_name	4654703:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ь
€
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4653041

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@]
TanhTanhBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@d
IdentityIdentityTanh:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
л
Т
%__inference_ou2_layer_call_fn_4654787

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou2_layer_call_and_return_conditional_losses_4652808o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654783:'#
!
_user_specified_name	4654781:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ц	
…
#__inference_U_layer_call_fn_4652863
	ou1_input
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCall	ou1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_U_layer_call_and_return_conditional_losses_4652837o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4652859:'#
!
_user_specified_name	4652857:'#
!
_user_specified_name	4652855:'#
!
_user_specified_name	4652853:R N
'
_output_shapes
:€€€€€€€€€@
#
_user_specified_name	ou1_input
љ.
Г
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654261	
query	
value
keyA
+query_einsum_einsum_readvariableop_resource:@@3
!query_add_readvariableop_resource:@?
)key_einsum_einsum_readvariableop_resource:@@1
key_add_readvariableop_resource:@A
+value_einsum_einsum_readvariableop_resource:@@3
!value_add_readvariableop_resource:@L
6attention_output_einsum_einsum_readvariableop_resource:@@:
,attention_output_add_readvariableop_resource:@
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpТ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0∞
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:@*
dtype0Р
query/add/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0≥
key/einsum/EinsumEinsumkey(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:@*
dtype0У
key/add/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@Т
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0є
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:@*
dtype0Щ
value/add/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€@J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   >g
MulMulquery/add/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ь
einsum/EinsumEinsumkey/add/add:z:0Mul:z:0*
N*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€*
equationaecd,abcd->acbeu
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€z
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*8
_output_shapes&
$:"€€€€€€€€€€€€€€€€€€©
einsum_1/EinsumEinsumdropout/Identity:output:0value/add/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€@*
equationacbe,aecd->abcd®
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:@@*
dtype0’
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€@*
equationabcd,cde->abeМ
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0≠
attention_output/add/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@o
IdentityIdentityattention_output/add/add:z:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@і
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@:€€€€€€€€€€€€€€€€€€@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:YU
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namekey:[W
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@

_user_specified_namevalue:R N
+
_output_shapes
:€€€€€€€€€@

_user_specified_namequery
н

`
D__inference_reshape_layer_call_and_return_conditional_losses_4654050

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Г
Ц
)__inference_dense_1_layer_call_fn_4654322

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_4653182s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654318:'#
!
_user_specified_name	4654316:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Й&
¶

'__inference_model_layer_call_fn_4653586
x_input
t_input
	xbc_layer
	tbc_layer
	ubc_layer
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@@

unknown_10:@ 

unknown_11:@@

unknown_12:@ 

unknown_13:@@

unknown_14:@ 

unknown_15:@@

unknown_16:@ 

unknown_17:@@

unknown_18:@

unknown_19:@@

unknown_20:@

unknown_21:@@

unknown_22:@ 

unknown_23:@@

unknown_24:@ 

unknown_25:@@

unknown_26:@ 

unknown_27:@@

unknown_28:@ 

unknown_29:@@

unknown_30:@

unknown_31:@@

unknown_32:@

unknown_33:@@

unknown_34:@

unknown_35:@@

unknown_36:@

unknown_37:@

unknown_38:
identityИҐStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallx_inputt_input	xbc_layer	tbc_layer	ubc_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*J
_read_only_resource_inputs,
*(	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_4653316o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesў
÷:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:',#
!
_user_specified_name	4653582:'+#
!
_user_specified_name	4653580:'*#
!
_user_specified_name	4653578:')#
!
_user_specified_name	4653576:'(#
!
_user_specified_name	4653574:''#
!
_user_specified_name	4653572:'&#
!
_user_specified_name	4653570:'%#
!
_user_specified_name	4653568:'$#
!
_user_specified_name	4653566:'##
!
_user_specified_name	4653564:'"#
!
_user_specified_name	4653562:'!#
!
_user_specified_name	4653560:' #
!
_user_specified_name	4653558:'#
!
_user_specified_name	4653556:'#
!
_user_specified_name	4653554:'#
!
_user_specified_name	4653552:'#
!
_user_specified_name	4653550:'#
!
_user_specified_name	4653548:'#
!
_user_specified_name	4653546:'#
!
_user_specified_name	4653544:'#
!
_user_specified_name	4653542:'#
!
_user_specified_name	4653540:'#
!
_user_specified_name	4653538:'#
!
_user_specified_name	4653536:'#
!
_user_specified_name	4653534:'#
!
_user_specified_name	4653532:'#
!
_user_specified_name	4653530:'#
!
_user_specified_name	4653528:'#
!
_user_specified_name	4653526:'#
!
_user_specified_name	4653524:'#
!
_user_specified_name	4653522:'#
!
_user_specified_name	4653520:'#
!
_user_specified_name	4653518:'#
!
_user_specified_name	4653516:'
#
!
_user_specified_name	4653514:'	#
!
_user_specified_name	4653512:'#
!
_user_specified_name	4653510:'#
!
_user_specified_name	4653508:'#
!
_user_specified_name	4653506:'#
!
_user_specified_name	4653504:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	ubc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	tbc_layer:_[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
#
_user_specified_name	Xbc_layer:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	t_input:P L
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	x_input
Й
d
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4654032

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањb
mulMulinputsCast/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€g
addAddV2mul:z:0Cast_1/x:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€\
IdentityIdentityadd:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
™
J
.__inference_activation_5_layer_call_fn_4654802

inputs
identityЈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_5_layer_call_and_return_conditional_losses_4652818`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
л
Т
%__inference_ou1_layer_call_fn_4654758

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_ou1_layer_call_and_return_conditional_losses_4652787o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654754:'#
!
_user_specified_name	4654752:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Х
√
@__inference_BPE_layer_call_and_return_conditional_losses_4652721
bpe_layer1_input$
bpe_layer1_4652708:@ 
bpe_layer1_4652710:@$
bpe_layer2_4652714:@@ 
bpe_layer2_4652716:@
identityИҐ"bpe_layer1/StatefulPartitionedCallҐ"bpe_layer2/StatefulPartitionedCallХ
"bpe_layer1/StatefulPartitionedCallStatefulPartitionedCallbpe_layer1_inputbpe_layer1_4652708bpe_layer1_4652710*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4652651ц
activation_2/PartitionedCallPartitionedCall+bpe_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_4652661™
"bpe_layer2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0bpe_layer2_4652714bpe_layer2_4652716*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4652692ц
activation_3/PartitionedCallPartitionedCall+bpe_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_3_layer_call_and_return_conditional_losses_4652702Б
IdentityIdentity%activation_3/PartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
NoOpNoOp#^bpe_layer1/StatefulPartitionedCall#^bpe_layer2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 2H
"bpe_layer1/StatefulPartitionedCall"bpe_layer1/StatefulPartitionedCall2H
"bpe_layer2/StatefulPartitionedCall"bpe_layer2/StatefulPartitionedCall:'#
!
_user_specified_name	4652716:'#
!
_user_specified_name	4652714:'#
!
_user_specified_name	4652710:'#
!
_user_specified_name	4652708:f b
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
*
_user_specified_namebpe_layer1_input
Л
b
F__inference_rescaling_layer_call_and_return_conditional_losses_4652906

inputs
identityH
Cast/xConst*
_output_shapes
: *
dtype0*
value	B :M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  АњN
mulMulinputsCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѓ
Ъ
-__inference_bve_layer_2_layer_call_fn_4654112

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4653041|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4654108:'#
!
_user_specified_name	4654106:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
√
e
I__inference_activation_5_layer_call_and_return_conditional_losses_4652818

inputs
identityF
TanhTanhinputs*
T0*'
_output_shapes
:€€€€€€€€€@P
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
®
E
)__inference_flatten_layer_call_fn_4654528

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_4653289`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ь
€
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4652974

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@]
TanhTanhBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@d
IdentityIdentityTanh:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
—
c
G__inference_activation_layer_call_and_return_conditional_losses_4654602

inputs
identityJ
TanhTanhinputs*
T0*+
_output_shapes
:€€€€€€€€€@T
IdentityIdentityTanh:y:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
√
e
I__inference_activation_4_layer_call_and_return_conditional_losses_4654778

inputs
identityF
TanhTanhinputs*
T0*'
_output_shapes
:€€€€€€€€€@P
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ё
J
.__inference_activation_2_layer_call_fn_4654695

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_2_layer_call_and_return_conditional_losses_4652661m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Р
В
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4654641

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ш	
ц
E__inference_output_u_layer_call_and_return_conditional_losses_4653309

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ƒ
ю
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4652692

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
’
щ
B__inference_dense_layer_call_and_return_conditional_losses_4653146

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@T
TanhTanhBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€@[
IdentityIdentityTanh:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
н

`
D__inference_reshape_layer_call_and_return_conditional_losses_4653000

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ь
€
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4654143

inputs3
!tensordot_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:В
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:М
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Е
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@]
TanhTanhBiasAdd:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@d
IdentityIdentityTanh:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
’ї
№
#__inference__traced_restore_4655202
file_prefix5
#assignvariableop_bve_layer_1_kernel:@1
#assignvariableop_1_bve_layer_1_bias:@7
%assignvariableop_2_bve_layer_2_kernel:@@1
#assignvariableop_3_bve_layer_2_bias:@1
assignvariableop_4_dense_kernel:@@+
assignvariableop_5_dense_bias:@3
!assignvariableop_6_dense_1_kernel:@@-
assignvariableop_7_dense_1_bias:@3
!assignvariableop_8_dense_2_kernel:@@-
assignvariableop_9_dense_2_bias:@5
#assignvariableop_10_output_u_kernel:@/
!assignvariableop_11_output_u_bias:;
)assignvariableop_12_spatial_layer1_kernel:@5
'assignvariableop_13_spatial_layer1_bias:@;
)assignvariableop_14_spatial_layer2_kernel:@@5
'assignvariableop_15_spatial_layer2_bias:@7
%assignvariableop_16_bpe_layer1_kernel:@1
#assignvariableop_17_bpe_layer1_bias:@7
%assignvariableop_18_bpe_layer2_kernel:@@1
#assignvariableop_19_bpe_layer2_bias:@K
5assignvariableop_20_multi_head_attention_query_kernel:@@E
3assignvariableop_21_multi_head_attention_query_bias:@I
3assignvariableop_22_multi_head_attention_key_kernel:@@C
1assignvariableop_23_multi_head_attention_key_bias:@K
5assignvariableop_24_multi_head_attention_value_kernel:@@E
3assignvariableop_25_multi_head_attention_value_bias:@V
@assignvariableop_26_multi_head_attention_attention_output_kernel:@@L
>assignvariableop_27_multi_head_attention_attention_output_bias:@M
7assignvariableop_28_multi_head_attention_1_query_kernel:@@G
5assignvariableop_29_multi_head_attention_1_query_bias:@K
5assignvariableop_30_multi_head_attention_1_key_kernel:@@E
3assignvariableop_31_multi_head_attention_1_key_bias:@M
7assignvariableop_32_multi_head_attention_1_value_kernel:@@G
5assignvariableop_33_multi_head_attention_1_value_bias:@X
Bassignvariableop_34_multi_head_attention_1_attention_output_kernel:@@N
@assignvariableop_35_multi_head_attention_1_attention_output_bias:@0
assignvariableop_36_ou1_kernel:@@*
assignvariableop_37_ou1_bias:@0
assignvariableop_38_ou2_kernel:@@*
assignvariableop_39_ou2_bias:@
identity_41ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ч
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*љ
value≥B∞)B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B о
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ї
_output_shapesІ
§:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOpAssignVariableOp#assignvariableop_bve_layer_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_1AssignVariableOp#assignvariableop_1_bve_layer_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_2AssignVariableOp%assignvariableop_2_bve_layer_2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_3AssignVariableOp#assignvariableop_3_bve_layer_2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_10AssignVariableOp#assignvariableop_10_output_u_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_11AssignVariableOp!assignvariableop_11_output_u_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_12AssignVariableOp)assignvariableop_12_spatial_layer1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_13AssignVariableOp'assignvariableop_13_spatial_layer1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_14AssignVariableOp)assignvariableop_14_spatial_layer2_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_15AssignVariableOp'assignvariableop_15_spatial_layer2_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_16AssignVariableOp%assignvariableop_16_bpe_layer1_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_17AssignVariableOp#assignvariableop_17_bpe_layer1_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_18AssignVariableOp%assignvariableop_18_bpe_layer2_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_19AssignVariableOp#assignvariableop_19_bpe_layer2_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_20AssignVariableOp5assignvariableop_20_multi_head_attention_query_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_21AssignVariableOp3assignvariableop_21_multi_head_attention_query_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_22AssignVariableOp3assignvariableop_22_multi_head_attention_key_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_23AssignVariableOp1assignvariableop_23_multi_head_attention_key_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_24AssignVariableOp5assignvariableop_24_multi_head_attention_value_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_25AssignVariableOp3assignvariableop_25_multi_head_attention_value_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_26AssignVariableOp@assignvariableop_26_multi_head_attention_attention_output_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_27AssignVariableOp>assignvariableop_27_multi_head_attention_attention_output_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_28AssignVariableOp7assignvariableop_28_multi_head_attention_1_query_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_29AssignVariableOp5assignvariableop_29_multi_head_attention_1_query_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_30AssignVariableOp5assignvariableop_30_multi_head_attention_1_key_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_31AssignVariableOp3assignvariableop_31_multi_head_attention_1_key_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_32AssignVariableOp7assignvariableop_32_multi_head_attention_1_value_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_33AssignVariableOp5assignvariableop_33_multi_head_attention_1_value_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_34AssignVariableOpBassignvariableop_34_multi_head_attention_1_attention_output_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_35AssignVariableOp@assignvariableop_35_multi_head_attention_1_attention_output_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_36AssignVariableOpassignvariableop_36_ou1_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_37AssignVariableOpassignvariableop_37_ou1_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_38AssignVariableOpassignvariableop_38_ou2_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_39AssignVariableOpassignvariableop_39_ou2_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 њ
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: И
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_41Identity_41:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:(($
"
_user_specified_name
ou2/bias:*'&
$
_user_specified_name
ou2/kernel:(&$
"
_user_specified_name
ou1/bias:*%&
$
_user_specified_name
ou1/kernel:L$H
F
_user_specified_name.,multi_head_attention_1/attention_output/bias:N#J
H
_user_specified_name0.multi_head_attention_1/attention_output/kernel:A"=
;
_user_specified_name#!multi_head_attention_1/value/bias:C!?
=
_user_specified_name%#multi_head_attention_1/value/kernel:? ;
9
_user_specified_name!multi_head_attention_1/key/bias:A=
;
_user_specified_name#!multi_head_attention_1/key/kernel:A=
;
_user_specified_name#!multi_head_attention_1/query/bias:C?
=
_user_specified_name%#multi_head_attention_1/query/kernel:JF
D
_user_specified_name,*multi_head_attention/attention_output/bias:LH
F
_user_specified_name.,multi_head_attention/attention_output/kernel:?;
9
_user_specified_name!multi_head_attention/value/bias:A=
;
_user_specified_name#!multi_head_attention/value/kernel:=9
7
_user_specified_namemulti_head_attention/key/bias:?;
9
_user_specified_name!multi_head_attention/key/kernel:?;
9
_user_specified_name!multi_head_attention/query/bias:A=
;
_user_specified_name#!multi_head_attention/query/kernel:/+
)
_user_specified_namebpe_layer2/bias:1-
+
_user_specified_namebpe_layer2/kernel:/+
)
_user_specified_namebpe_layer1/bias:1-
+
_user_specified_namebpe_layer1/kernel:3/
-
_user_specified_namespatial_layer2/bias:51
/
_user_specified_namespatial_layer2/kernel:3/
-
_user_specified_namespatial_layer1/bias:51
/
_user_specified_namespatial_layer1/kernel:-)
'
_user_specified_nameoutput_u/bias:/+
)
_user_specified_nameoutput_u/kernel:,
(
&
_user_specified_namedense_2/bias:.	*
(
_user_specified_namedense_2/kernel:,(
&
_user_specified_namedense_1/bias:.*
(
_user_specified_namedense_1/kernel:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:0,
*
_user_specified_namebve_layer_2/bias:2.
,
_user_specified_namebve_layer_2/kernel:0,
*
_user_specified_namebve_layer_1/bias:2.
,
_user_specified_namebve_layer_1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
≠
Y
-__inference_concatenate_layer_call_fn_4653998
inputs_0
inputs_1
identity√
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_concatenate_layer_call_and_return_conditional_losses_4652942`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0
ч
e
I__inference_activation_3_layer_call_and_return_conditional_losses_4652702

inputs
identityS
TanhTanhinputs*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@]
IdentityIdentityTanh:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€@:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Р
В
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4652495

inputs3
!tensordot_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::нѕY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Г
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
t
H__inference_concatenate_layer_call_and_return_conditional_losses_4654005
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0
»
d
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4653992

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  АњU
mulMulinputsCast/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
addAddV2mul:z:0Cast_1/x:output:0*
T0*'
_output_shapes
:€€€€€€€€€O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
”
e
I__inference_activation_1_layer_call_and_return_conditional_losses_4652546

inputs
identityJ
TanhTanhinputs*
T0*+
_output_shapes
:€€€€€€€€€@T
IdentityIdentityTanh:y:0*
T0*+
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
г	
“
%__inference_BPE_layer_call_fn_4652747
bpe_layer1_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallbpe_layer1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_BPE_layer_call_and_return_conditional_losses_4652721|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4652743:'#
!
_user_specified_name	4652741:'#
!
_user_specified_name	4652739:'#
!
_user_specified_name	4652737:f b
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
*
_user_specified_namebpe_layer1_input
∆
т
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652565
spatial_layer1_input(
spatial_layer1_4652552:@$
spatial_layer1_4652554:@(
spatial_layer2_4652558:@@$
spatial_layer2_4652560:@
identityИҐ&spatial_layer1/StatefulPartitionedCallҐ&spatial_layer2/StatefulPartitionedCall†
&spatial_layer1/StatefulPartitionedCallStatefulPartitionedCallspatial_layer1_inputspatial_layer1_4652552spatial_layer1_4652554*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4652495н
activation/PartitionedCallPartitionedCall/spatial_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_4652505ѓ
&spatial_layer2/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0spatial_layer2_4652558spatial_layer2_4652560*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4652536с
activation_1/PartitionedCallPartitionedCall/spatial_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_activation_1_layer_call_and_return_conditional_losses_4652546x
IdentityIdentity%activation_1/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€@t
NoOpNoOp'^spatial_layer1/StatefulPartitionedCall'^spatial_layer2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : : : 2P
&spatial_layer1/StatefulPartitionedCall&spatial_layer1/StatefulPartitionedCall2P
&spatial_layer2/StatefulPartitionedCall&spatial_layer2/StatefulPartitionedCall:'#
!
_user_specified_name	4652560:'#
!
_user_specified_name	4652558:'#
!
_user_specified_name	4652554:'#
!
_user_specified_name	4652552:a ]
+
_output_shapes
:€€€€€€€€€
.
_user_specified_namespatial_layer1_input
€
[
/__inference_concatenate_1_layer_call_fn_4654056
inputs_0
inputs_1
identity“
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4652986m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:€€€€€€€€€€€€€€€€€€:^Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_1:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0"нL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*“
serving_defaultЊ
L
	Xbc_layer?
serving_default_Xbc_layer:0€€€€€€€€€€€€€€€€€€
;
t_input0
serving_default_t_input:0€€€€€€€€€
L
	tbc_layer?
serving_default_tbc_layer:0€€€€€€€€€€€€€€€€€€
L
	ubc_layer?
serving_default_ubc_layer:0€€€€€€€€€€€€€€€€€€
;
x_input0
serving_default_x_input:0€€€€€€€€€<
output_u0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:£Ь
’
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer_with_weights-0
layer-12
layer_with_weights-1
layer-13
layer_with_weights-2
layer-14
layer_with_weights-3
layer-15
layer_with_weights-4
layer-16
layer-17
layer_with_weights-5
layer-18
layer_with_weights-6
layer-19
layer_with_weights-7
layer-20
layer-21
layer_with_weights-8
layer-22
layer-23
layer_with_weights-9
layer-24
layer_with_weights-10
layer-25
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature
"
signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
•
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
•
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
•
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
•
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
•
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
•
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
•
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias"
_tf_keras_layer
Т
Ulayer_with_weights-0
Ulayer-0
Vlayer-1
Wlayer_with_weights-1
Wlayer-2
Xlayer-3
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_sequential
Т
_layer_with_weights-0
_layer-0
`layer-1
alayer_with_weights-1
alayer-2
blayer-3
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_sequential
ї
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias"
_tf_keras_layer
О
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
w_query_dense
x
_key_dense
y_value_dense
z_softmax
{_dropout_layer
|_output_dense"
_tf_keras_layer
®
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses"
_tf_keras_layer
√
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Йkernel
	Кbias"
_tf_keras_layer
√
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
Сkernel
	Тbias"
_tf_keras_layer
Ъ
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щ_query_dense
Ъ
_key_dense
Ы_value_dense
Ь_softmax
Э_dropout_layer
Ю_output_dense"
_tf_keras_layer
Ђ
Я	variables
†trainable_variables
°regularization_losses
Ґ	keras_api
£__call__
+§&call_and_return_all_conditional_losses"
_tf_keras_layer
√
•	variables
¶trainable_variables
Іregularization_losses
®	keras_api
©__call__
+™&call_and_return_all_conditional_losses
Ђkernel
	ђbias"
_tf_keras_layer
Ђ
≠	variables
Ѓtrainable_variables
ѓregularization_losses
∞	keras_api
±__call__
+≤&call_and_return_all_conditional_losses"
_tf_keras_layer
Ю
≥layer_with_weights-0
≥layer-0
іlayer-1
µlayer_with_weights-1
µlayer-2
ґlayer-3
Ј	variables
Єtrainable_variables
єregularization_losses
Ї	keras_api
ї__call__
+Љ&call_and_return_all_conditional_losses"
_tf_keras_sequential
√
љ	variables
Њtrainable_variables
њregularization_losses
ј	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses
√kernel
	ƒbias"
_tf_keras_layer
ъ
S0
T1
≈2
∆3
«4
»5
…6
 7
Ћ8
ћ9
o10
p11
Ќ12
ќ13
ѕ14
–15
—16
“17
”18
‘19
Й20
К21
С22
Т23
’24
÷25
„26
Ў27
ў28
Џ29
џ30
№31
Ђ32
ђ33
Ё34
ё35
я36
а37
√38
ƒ39"
trackable_list_wrapper
ъ
S0
T1
≈2
∆3
«4
»5
…6
 7
Ћ8
ћ9
o10
p11
Ќ12
ќ13
ѕ14
–15
—16
“17
”18
‘19
Й20
К21
С22
Т23
’24
÷25
„26
Ў27
ў28
Џ29
џ30
№31
Ђ32
ђ33
Ё34
ё35
я36
а37
√38
ƒ39"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
≈
жtrace_0
зtrace_12К
'__inference_model_layer_call_fn_4653586
'__inference_model_layer_call_fn_4653675µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zжtrace_0zзtrace_1
ы
иtrace_0
йtrace_12ј
B__inference_model_layer_call_and_return_conditional_losses_4653316
B__inference_model_layer_call_and_return_conditional_losses_4653497µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zиtrace_0zйtrace_1
чBф
"__inference__wrapped_model_4652463x_inputt_input	Xbc_layer	tbc_layer	ubc_layer"Ш
С≤Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
-
кserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
з
рtrace_02»
+__inference_rescaling_layer_call_fn_4653970Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zрtrace_0
В
сtrace_02г
F__inference_rescaling_layer_call_and_return_conditional_losses_4653979Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zсtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
й
чtrace_02 
-__inference_rescaling_1_layer_call_fn_4653984Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zчtrace_0
Д
шtrace_02е
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4653992Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zшtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
й
юtrace_02 
-__inference_concatenate_layer_call_fn_4653998Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zюtrace_0
Д
€trace_02е
H__inference_concatenate_layer_call_and_return_conditional_losses_4654005Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z€trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
й
Еtrace_02 
-__inference_rescaling_2_layer_call_fn_4654010Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЕtrace_0
Д
Жtrace_02е
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4654019Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЖtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
й
Мtrace_02 
-__inference_rescaling_3_layer_call_fn_4654024Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zМtrace_0
Д
Нtrace_02е
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4654032Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zНtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
е
Уtrace_02∆
)__inference_reshape_layer_call_fn_4654037Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zУtrace_0
А
Фtrace_02б
D__inference_reshape_layer_call_and_return_conditional_losses_4654050Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zФtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
л
Ъtrace_02ћ
/__inference_concatenate_1_layer_call_fn_4654056Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЪtrace_0
Ж
Ыtrace_02з
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4654063Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЫtrace_0
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
й
°trace_02 
-__inference_bve_layer_1_layer_call_fn_4654072Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z°trace_0
Д
Ґtrace_02е
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4654103Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zҐtrace_0
$:"@2bve_layer_1/kernel
:@2bve_layer_1/bias
√
£	variables
§trainable_variables
•regularization_losses
¶	keras_api
І__call__
+®&call_and_return_all_conditional_losses
≈kernel
	∆bias"
_tf_keras_layer
Ђ
©	variables
™trainable_variables
Ђregularization_losses
ђ	keras_api
≠__call__
+Ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
√
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses
«kernel
	»bias"
_tf_keras_layer
Ђ
µ	variables
ґtrainable_variables
Јregularization_losses
Є	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses"
_tf_keras_layer
@
≈0
∆1
«2
»3"
trackable_list_wrapper
@
≈0
∆1
«2
»3"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
їnon_trainable_variables
Љlayers
љmetrics
 Њlayer_regularization_losses
њlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
з
јtrace_0
Ѕtrace_12ђ
8__inference_spatial_transformation_layer_call_fn_4652578
8__inference_spatial_transformation_layer_call_fn_4652591µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zјtrace_0zЅtrace_1
Э
¬trace_0
√trace_12в
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652549
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652565µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z¬trace_0z√trace_1
√
ƒ	variables
≈trainable_variables
∆regularization_losses
«	keras_api
»__call__
+…&call_and_return_all_conditional_losses
…kernel
	 bias"
_tf_keras_layer
Ђ
 	variables
Ћtrainable_variables
ћregularization_losses
Ќ	keras_api
ќ__call__
+ѕ&call_and_return_all_conditional_losses"
_tf_keras_layer
√
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘__call__
+’&call_and_return_all_conditional_losses
Ћkernel
	ћbias"
_tf_keras_layer
Ђ
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses"
_tf_keras_layer
@
…0
 1
Ћ2
ћ3"
trackable_list_wrapper
@
…0
 1
Ћ2
ћ3"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
Ѕ
бtrace_0
вtrace_12Ж
%__inference_BPE_layer_call_fn_4652734
%__inference_BPE_layer_call_fn_4652747µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zбtrace_0zвtrace_1
ч
гtrace_0
дtrace_12Љ
@__inference_BPE_layer_call_and_return_conditional_losses_4652705
@__inference_BPE_layer_call_and_return_conditional_losses_4652721µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zгtrace_0zдtrace_1
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
й
кtrace_02 
-__inference_bve_layer_2_layer_call_fn_4654112Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zкtrace_0
Д
лtrace_02е
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4654143Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zлtrace_0
$:"@@2bve_layer_2/kernel
:@2bve_layer_2/bias
`
Ќ0
ќ1
ѕ2
–3
—4
“5
”6
‘7"
trackable_list_wrapper
`
Ќ0
ќ1
ѕ2
–3
—4
“5
”6
‘7"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
ґ
сtrace_0
тtrace_12ы
6__inference_multi_head_attention_layer_call_fn_4654166
6__inference_multi_head_attention_layer_call_fn_4654189И
Б≤э
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsҐ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zсtrace_0zтtrace_1
м
уtrace_0
фtrace_12±
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654225
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654261И
Б≤э
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsҐ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zуtrace_0zфtrace_1
ц
х	variables
цtrainable_variables
чregularization_losses
ш	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses
ыpartial_output_shape
ьfull_output_shape
Ќkernel
	ќbias"
_tf_keras_layer
ц
э	variables
юtrainable_variables
€regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Гpartial_output_shape
Дfull_output_shape
ѕkernel
	–bias"
_tf_keras_layer
ц
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses
Лpartial_output_shape
Мfull_output_shape
—kernel
	“bias"
_tf_keras_layer
Ђ
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
√
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щ_random_generator"
_tf_keras_layer
ц
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
†partial_output_shape
°full_output_shape
”kernel
	‘bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ґnon_trainable_variables
£layers
§metrics
 •layer_regularization_losses
¶layer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
б
Іtrace_02¬
%__inference_add_layer_call_fn_4654267Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zІtrace_0
ь
®trace_02Ё
@__inference_add_layer_call_and_return_conditional_losses_4654273Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z®trace_0
0
Й0
К1"
trackable_list_wrapper
0
Й0
К1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
г
Ѓtrace_02ƒ
'__inference_dense_layer_call_fn_4654282Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЃtrace_0
ю
ѓtrace_02я
B__inference_dense_layer_call_and_return_conditional_losses_4654313Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0
:@@2dense/kernel
:@2
dense/bias
0
С0
Т1"
trackable_list_wrapper
0
С0
Т1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
е
µtrace_02∆
)__inference_dense_1_layer_call_fn_4654322Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zµtrace_0
А
ґtrace_02б
D__inference_dense_1_layer_call_and_return_conditional_losses_4654353Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0
 :@@2dense_1/kernel
:@2dense_1/bias
`
’0
÷1
„2
Ў3
ў4
Џ5
џ6
№7"
trackable_list_wrapper
`
’0
÷1
„2
Ў3
ў4
Џ5
џ6
№7"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
Ї
Љtrace_0
љtrace_12€
8__inference_multi_head_attention_1_layer_call_fn_4654376
8__inference_multi_head_attention_1_layer_call_fn_4654399И
Б≤э
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsҐ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЉtrace_0zљtrace_1
р
Њtrace_0
њtrace_12µ
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4654435
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4654471И
Б≤э
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaultsҐ

 

 
p 
p 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЊtrace_0zњtrace_1
ц
ј	variables
Ѕtrainable_variables
¬regularization_losses
√	keras_api
ƒ__call__
+≈&call_and_return_all_conditional_losses
∆partial_output_shape
«full_output_shape
’kernel
	÷bias"
_tf_keras_layer
ц
»	variables
…trainable_variables
 regularization_losses
Ћ	keras_api
ћ__call__
+Ќ&call_and_return_all_conditional_losses
ќpartial_output_shape
ѕfull_output_shape
„kernel
	Ўbias"
_tf_keras_layer
ц
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘__call__
+’&call_and_return_all_conditional_losses
÷partial_output_shape
„full_output_shape
ўkernel
	Џbias"
_tf_keras_layer
Ђ
Ў	variables
ўtrainable_variables
Џregularization_losses
џ	keras_api
№__call__
+Ё&call_and_return_all_conditional_losses"
_tf_keras_layer
√
ё	variables
яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses
д_random_generator"
_tf_keras_layer
ц
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
лpartial_output_shape
мfull_output_shape
џkernel
	№bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
Я	variables
†trainable_variables
°regularization_losses
£__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
г
тtrace_02ƒ
'__inference_add_1_layer_call_fn_4654477Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zтtrace_0
ю
уtrace_02я
B__inference_add_1_layer_call_and_return_conditional_losses_4654483Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zуtrace_0
0
Ђ0
ђ1"
trackable_list_wrapper
0
Ђ0
ђ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
•	variables
¶trainable_variables
Іregularization_losses
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses"
_generic_user_object
е
щtrace_02∆
)__inference_dense_2_layer_call_fn_4654492Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zщtrace_0
А
ъtrace_02б
D__inference_dense_2_layer_call_and_return_conditional_losses_4654523Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zъtrace_0
 :@@2dense_2/kernel
:@2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
≠	variables
Ѓtrainable_variables
ѓregularization_losses
±__call__
+≤&call_and_return_all_conditional_losses
'≤"call_and_return_conditional_losses"
_generic_user_object
е
Аtrace_02∆
)__inference_flatten_layer_call_fn_4654528Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zАtrace_0
А
Бtrace_02б
D__inference_flatten_layer_call_and_return_conditional_losses_4654534Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zБtrace_0
√
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
Ёkernel
	ёbias"
_tf_keras_layer
Ђ
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses"
_tf_keras_layer
√
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses
яkernel
	аbias"
_tf_keras_layer
Ђ
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses"
_tf_keras_layer
@
Ё0
ё1
я2
а3"
trackable_list_wrapper
@
Ё0
ё1
я2
а3"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
Ј	variables
Єtrainable_variables
єregularization_losses
ї__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
љ
Яtrace_0
†trace_12В
#__inference_U_layer_call_fn_4652850
#__inference_U_layer_call_fn_4652863µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЯtrace_0z†trace_1
у
°trace_0
Ґtrace_12Є
>__inference_U_layer_call_and_return_conditional_losses_4652821
>__inference_U_layer_call_and_return_conditional_losses_4652837µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z°trace_0zҐtrace_1
0
√0
ƒ1"
trackable_list_wrapper
0
√0
ƒ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
љ	variables
Њtrainable_variables
њregularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
ж
®trace_02«
*__inference_output_u_layer_call_fn_4654543Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z®trace_0
Б
©trace_02в
E__inference_output_u_layer_call_and_return_conditional_losses_4654553Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z©trace_0
!:@2output_u/kernel
:2output_u/bias
':%@2spatial_layer1/kernel
!:@2spatial_layer1/bias
':%@@2spatial_layer2/kernel
!:@2spatial_layer2/bias
#:!@2bpe_layer1/kernel
:@2bpe_layer1/bias
#:!@@2bpe_layer2/kernel
:@2bpe_layer2/bias
7:5@@2!multi_head_attention/query/kernel
1:/@2multi_head_attention/query/bias
5:3@@2multi_head_attention/key/kernel
/:-@2multi_head_attention/key/bias
7:5@@2!multi_head_attention/value/kernel
1:/@2multi_head_attention/value/bias
B:@@@2,multi_head_attention/attention_output/kernel
8:6@2*multi_head_attention/attention_output/bias
9:7@@2#multi_head_attention_1/query/kernel
3:1@2!multi_head_attention_1/query/bias
7:5@@2!multi_head_attention_1/key/kernel
1:/@2multi_head_attention_1/key/bias
9:7@@2#multi_head_attention_1/value/kernel
3:1@2!multi_head_attention_1/value/bias
D:B@@2.multi_head_attention_1/attention_output/kernel
::8@2,multi_head_attention_1/attention_output/bias
:@@2
ou1/kernel
:@2ou1/bias
:@@2
ou2/kernel
:@2ou2/bias
 "
trackable_list_wrapper
ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
РBН
'__inference_model_layer_call_fn_4653586x_inputt_input	Xbc_layer	tbc_layer	ubc_layer"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
РBН
'__inference_model_layer_call_fn_4653675x_inputt_input	Xbc_layer	tbc_layer	ubc_layer"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЂB®
B__inference_model_layer_call_and_return_conditional_losses_4653316x_inputt_input	Xbc_layer	tbc_layer	ubc_layer"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЂB®
B__inference_model_layer_call_and_return_conditional_losses_4653497x_inputt_input	Xbc_layer	tbc_layer	ubc_layer"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЂB®
%__inference_signature_wrapper_4653965	Xbc_layert_input	tbc_layer	ubc_layerx_input"Ћ
ƒ≤ј
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 N

kwonlyargs@Ъ=
j	Xbc_layer
	jt_input
j	tbc_layer
j	ubc_layer
	jx_input
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
’B“
+__inference_rescaling_layer_call_fn_4653970inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
F__inference_rescaling_layer_call_and_return_conditional_losses_4653979inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
„B‘
-__inference_rescaling_1_layer_call_fn_4653984inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4653992inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
гBа
-__inference_concatenate_layer_call_fn_4653998inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
H__inference_concatenate_layer_call_and_return_conditional_losses_4654005inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
„B‘
-__inference_rescaling_2_layer_call_fn_4654010inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4654019inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
„B‘
-__inference_rescaling_3_layer_call_fn_4654024inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4654032inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_reshape_layer_call_fn_4654037inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_reshape_layer_call_and_return_conditional_losses_4654050inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
еBв
/__inference_concatenate_1_layer_call_fn_4654056inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4654063inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
„B‘
-__inference_bve_layer_1_layer_call_fn_4654072inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4654103inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
≈0
∆1"
trackable_list_wrapper
0
≈0
∆1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
£	variables
§trainable_variables
•regularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
м
ѓtrace_02Ќ
0__inference_spatial_layer1_layer_call_fn_4654562Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0
З
∞trace_02и
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4654592Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∞trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
©	variables
™trainable_variables
Ђregularization_losses
≠__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
и
ґtrace_02…
,__inference_activation_layer_call_fn_4654597Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0
Г
Јtrace_02д
G__inference_activation_layer_call_and_return_conditional_losses_4654602Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЈtrace_0
0
«0
»1"
trackable_list_wrapper
0
«0
»1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
м
љtrace_02Ќ
0__inference_spatial_layer2_layer_call_fn_4654611Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0
З
Њtrace_02и
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4654641Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЊtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
µ	variables
ґtrainable_variables
Јregularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
к
ƒtrace_02Ћ
.__inference_activation_1_layer_call_fn_4654646Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zƒtrace_0
Е
≈trace_02ж
I__inference_activation_1_layer_call_and_return_conditional_losses_4654651Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≈trace_0
 "
trackable_list_wrapper
<
U0
V1
W2
X3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
8__inference_spatial_transformation_layer_call_fn_4652578spatial_layer1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
8__inference_spatial_transformation_layer_call_fn_4652591spatial_layer1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652549spatial_layer1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652565spatial_layer1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
…0
 1"
trackable_list_wrapper
0
…0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
ƒ	variables
≈trainable_variables
∆regularization_losses
»__call__
+…&call_and_return_all_conditional_losses
'…"call_and_return_conditional_losses"
_generic_user_object
и
Ћtrace_02…
,__inference_bpe_layer1_layer_call_fn_4654660Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0
Г
ћtrace_02д
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4654690Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zћtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
 	variables
Ћtrainable_variables
ћregularization_losses
ќ__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
к
“trace_02Ћ
.__inference_activation_2_layer_call_fn_4654695Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z“trace_0
Е
”trace_02ж
I__inference_activation_2_layer_call_and_return_conditional_losses_4654700Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z”trace_0
0
Ћ0
ћ1"
trackable_list_wrapper
0
Ћ0
ћ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
–	variables
—trainable_variables
“regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
и
ўtrace_02…
,__inference_bpe_layer2_layer_call_fn_4654709Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zўtrace_0
Г
Џtrace_02д
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4654739Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЏtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
к
аtrace_02Ћ
.__inference_activation_3_layer_call_fn_4654744Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zаtrace_0
Е
бtrace_02ж
I__inference_activation_3_layer_call_and_return_conditional_losses_4654749Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zбtrace_0
 "
trackable_list_wrapper
<
_0
`1
a2
b3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBк
%__inference_BPE_layer_call_fn_4652734bpe_layer1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
%__inference_BPE_layer_call_fn_4652747bpe_layer1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ИBЕ
@__inference_BPE_layer_call_and_return_conditional_losses_4652705bpe_layer1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ИBЕ
@__inference_BPE_layer_call_and_return_conditional_losses_4652721bpe_layer1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
„B‘
-__inference_bve_layer_2_layer_call_fn_4654112inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4654143inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
J
w0
x1
y2
z3
{4
|5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
∆B√
6__inference_multi_head_attention_layer_call_fn_4654166queryvaluekey"у
м≤и
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∆B√
6__inference_multi_head_attention_layer_call_fn_4654189queryvaluekey"у
м≤и
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
бBё
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654225queryvaluekey"у
м≤и
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
бBё
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654261queryvaluekey"у
м≤и
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
Ќ0
ќ1"
trackable_list_wrapper
0
Ќ0
ќ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
х	variables
цtrainable_variables
чregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
ѕ0
–1"
trackable_list_wrapper
0
ѕ0
–1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
э	variables
юtrainable_variables
€regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
—0
“1"
trackable_list_wrapper
0
—0
“1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
Ђ2®•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ђ2®•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
0
”0
‘1"
trackable_list_wrapper
0
”0
‘1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
%__inference_add_layer_call_fn_4654267inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
@__inference_add_layer_call_and_return_conditional_losses_4654273inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
—Bќ
'__inference_dense_layer_call_fn_4654282inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
мBй
B__inference_dense_layer_call_and_return_conditional_losses_4654313inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_1_layer_call_fn_4654322inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_1_layer_call_and_return_conditional_losses_4654353inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
P
Щ0
Ъ1
Ы2
Ь3
Э4
Ю5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
»B≈
8__inference_multi_head_attention_1_layer_call_fn_4654376queryvaluekey"у
м≤и
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
»B≈
8__inference_multi_head_attention_1_layer_call_fn_4654399queryvaluekey"у
м≤и
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
гBа
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4654435queryvaluekey"у
м≤и
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
гBа
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4654471queryvaluekey"у
м≤и
FullArgSpecp
argshЪe
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
’0
÷1"
trackable_list_wrapper
0
’0
÷1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
ј	variables
Ѕtrainable_variables
¬regularization_losses
ƒ__call__
+≈&call_and_return_all_conditional_losses
'≈"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
„0
Ў1"
trackable_list_wrapper
0
„0
Ў1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
»	variables
…trainable_variables
 regularization_losses
ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
ў0
Џ1"
trackable_list_wrapper
0
ў0
Џ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
–	variables
—trainable_variables
“regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
Ў	variables
ўtrainable_variables
Џregularization_losses
№__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
Ђ2®•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ђ2®•
Ю≤Ъ
FullArgSpec
argsЪ
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
ё	variables
яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
0
џ0
№1"
trackable_list_wrapper
0
џ0
№1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ю2ЫШ
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBЏ
'__inference_add_1_layer_call_fn_4654477inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
B__inference_add_1_layer_call_and_return_conditional_losses_4654483inputs_0inputs_1"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_2_layer_call_fn_4654492inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_2_layer_call_and_return_conditional_losses_4654523inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_flatten_layer_call_fn_4654528inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_flatten_layer_call_and_return_conditional_losses_4654534inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
Ё0
ё1"
trackable_list_wrapper
0
Ё0
ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
б
£trace_02¬
%__inference_ou1_layer_call_fn_4654758Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z£trace_0
ь
§trace_02Ё
@__inference_ou1_layer_call_and_return_conditional_losses_4654768Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z§trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
•non_trainable_variables
¶layers
Іmetrics
 ®layer_regularization_losses
©layer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
к
™trace_02Ћ
.__inference_activation_4_layer_call_fn_4654773Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z™trace_0
Е
Ђtrace_02ж
I__inference_activation_4_layer_call_and_return_conditional_losses_4654778Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЂtrace_0
0
я0
а1"
trackable_list_wrapper
0
я0
а1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ђnon_trainable_variables
≠layers
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
б
±trace_02¬
%__inference_ou2_layer_call_fn_4654787Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z±trace_0
ь
≤trace_02Ё
@__inference_ou2_layer_call_and_return_conditional_losses_4654797Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≤trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
≥non_trainable_variables
іlayers
µmetrics
 ґlayer_regularization_losses
Јlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
к
Єtrace_02Ћ
.__inference_activation_5_layer_call_fn_4654802Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄtrace_0
Е
єtrace_02ж
I__inference_activation_5_layer_call_and_return_conditional_losses_4654807Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zєtrace_0
 "
trackable_list_wrapper
@
≥0
і1
µ2
ґ3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
дBб
#__inference_U_layer_call_fn_4652850	ou1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
#__inference_U_layer_call_fn_4652863	ou1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
>__inference_U_layer_call_and_return_conditional_losses_4652821	ou1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
>__inference_U_layer_call_and_return_conditional_losses_4652837	ou1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
‘B—
*__inference_output_u_layer_call_fn_4654543inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_output_u_layer_call_and_return_conditional_losses_4654553inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЏB„
0__inference_spatial_layer1_layer_call_fn_4654562inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4654592inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷B”
,__inference_activation_layer_call_fn_4654597inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
G__inference_activation_layer_call_and_return_conditional_losses_4654602inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЏB„
0__inference_spatial_layer2_layer_call_fn_4654611inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4654641inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЎB’
.__inference_activation_1_layer_call_fn_4654646inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
I__inference_activation_1_layer_call_and_return_conditional_losses_4654651inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷B”
,__inference_bpe_layer1_layer_call_fn_4654660inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4654690inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЎB’
.__inference_activation_2_layer_call_fn_4654695inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
I__inference_activation_2_layer_call_and_return_conditional_losses_4654700inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷B”
,__inference_bpe_layer2_layer_call_fn_4654709inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4654739inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЎB’
.__inference_activation_3_layer_call_fn_4654744inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
I__inference_activation_3_layer_call_and_return_conditional_losses_4654749inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѕBћ
%__inference_ou1_layer_call_fn_4654758inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
кBз
@__inference_ou1_layer_call_and_return_conditional_losses_4654768inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЎB’
.__inference_activation_4_layer_call_fn_4654773inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
I__inference_activation_4_layer_call_and_return_conditional_losses_4654778inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ѕBћ
%__inference_ou2_layer_call_fn_4654787inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
кBз
@__inference_ou2_layer_call_and_return_conditional_losses_4654797inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЎB’
.__inference_activation_5_layer_call_fn_4654802inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
I__inference_activation_5_layer_call_and_return_conditional_losses_4654807inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 Џ
@__inference_BPE_layer_call_and_return_conditional_losses_4652705Х… ЋћNҐK
DҐA
7К4
bpe_layer1_input€€€€€€€€€€€€€€€€€€
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ Џ
@__inference_BPE_layer_call_and_return_conditional_losses_4652721Х… ЋћNҐK
DҐA
7К4
bpe_layer1_input€€€€€€€€€€€€€€€€€€
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ і
%__inference_BPE_layer_call_fn_4652734К… ЋћNҐK
DҐA
7К4
bpe_layer1_input€€€€€€€€€€€€€€€€€€
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@і
%__inference_BPE_layer_call_fn_4652747К… ЋћNҐK
DҐA
7К4
bpe_layer1_input€€€€€€€€€€€€€€€€€€
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@ґ
>__inference_U_layer_call_and_return_conditional_losses_4652821tЁёяа:Ґ7
0Ґ-
#К 
	ou1_input€€€€€€€€€@
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ ґ
>__inference_U_layer_call_and_return_conditional_losses_4652837tЁёяа:Ґ7
0Ґ-
#К 
	ou1_input€€€€€€€€€@
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Р
#__inference_U_layer_call_fn_4652850iЁёяа:Ґ7
0Ґ-
#К 
	ou1_input€€€€€€€€€@
p

 
™ "!К
unknown€€€€€€€€€@Р
#__inference_U_layer_call_fn_4652863iЁёяа:Ґ7
0Ґ-
#К 
	ou1_input€€€€€€€€€@
p 

 
™ "!К
unknown€€€€€€€€€@†
"__inference__wrapped_model_4652463щLST… Ћћop≈∆«»Ќќѕ–—“”‘ЙКСТ’÷„ЎўЏџ№ЂђЁёяа√ƒуҐп
зҐг
аЪ№
!К
x_input€€€€€€€€€
!К
t_input€€€€€€€€€
0К-
	Xbc_layer€€€€€€€€€€€€€€€€€€
0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
™ "3™0
.
output_u"К
output_u€€€€€€€€€і
I__inference_activation_1_layer_call_and_return_conditional_losses_4654651g3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ О
.__inference_activation_1_layer_call_fn_4654646\3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@∆
I__inference_activation_2_layer_call_and_return_conditional_losses_4654700y<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ †
.__inference_activation_2_layer_call_fn_4654695n<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@∆
I__inference_activation_3_layer_call_and_return_conditional_losses_4654749y<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ †
.__inference_activation_3_layer_call_fn_4654744n<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@ђ
I__inference_activation_4_layer_call_and_return_conditional_losses_4654778_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Ж
.__inference_activation_4_layer_call_fn_4654773T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€@ђ
I__inference_activation_5_layer_call_and_return_conditional_losses_4654807_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Ж
.__inference_activation_5_layer_call_fn_4654802T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€@≤
G__inference_activation_layer_call_and_return_conditional_losses_4654602g3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ М
,__inference_activation_layer_call_fn_4654597\3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@Ё
B__inference_add_1_layer_call_and_return_conditional_losses_4654483ЦbҐ_
XҐU
SЪP
&К#
inputs_0€€€€€€€€€@
&К#
inputs_1€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Ј
'__inference_add_1_layer_call_fn_4654477ЛbҐ_
XҐU
SЪP
&К#
inputs_0€€€€€€€€€@
&К#
inputs_1€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@џ
@__inference_add_layer_call_and_return_conditional_losses_4654273ЦbҐ_
XҐU
SЪP
&К#
inputs_0€€€€€€€€€@
&К#
inputs_1€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ µ
%__inference_add_layer_call_fn_4654267ЛbҐ_
XҐU
SЪP
&К#
inputs_0€€€€€€€€€@
&К#
inputs_1€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@ 
G__inference_bpe_layer1_layer_call_and_return_conditional_losses_4654690… <Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ §
,__inference_bpe_layer1_layer_call_fn_4654660t… <Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@ 
G__inference_bpe_layer2_layer_call_and_return_conditional_losses_4654739Ћћ<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ §
,__inference_bpe_layer2_layer_call_fn_4654709tЋћ<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@…
H__inference_bve_layer_1_layer_call_and_return_conditional_losses_4654103}ST<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ £
-__inference_bve_layer_1_layer_call_fn_4654072rST<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@…
H__inference_bve_layer_2_layer_call_and_return_conditional_losses_4654143}op<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€@
Ъ £
-__inference_bve_layer_2_layer_call_fn_4654112rop<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€@
™ ".К+
unknown€€€€€€€€€€€€€€€€€€@А
J__inference_concatenate_1_layer_call_and_return_conditional_losses_4654063±tҐq
jҐg
eЪb
/К,
inputs_0€€€€€€€€€€€€€€€€€€
/К,
inputs_1€€€€€€€€€€€€€€€€€€
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Џ
/__inference_concatenate_1_layer_call_fn_4654056¶tҐq
jҐg
eЪb
/К,
inputs_0€€€€€€€€€€€€€€€€€€
/К,
inputs_1€€€€€€€€€€€€€€€€€€
™ ".К+
unknown€€€€€€€€€€€€€€€€€€„
H__inference_concatenate_layer_call_and_return_conditional_losses_4654005КZҐW
PҐM
KЪH
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ∞
-__inference_concatenate_layer_call_fn_4653998ZҐW
PҐM
KЪH
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
™ "!К
unknown€€€€€€€€€µ
D__inference_dense_1_layer_call_and_return_conditional_losses_4654353mСТ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ П
)__inference_dense_1_layer_call_fn_4654322bСТ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@µ
D__inference_dense_2_layer_call_and_return_conditional_losses_4654523mЂђ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ П
)__inference_dense_2_layer_call_fn_4654492bЂђ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@≥
B__inference_dense_layer_call_and_return_conditional_losses_4654313mЙК3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Н
'__inference_dense_layer_call_fn_4654282bЙК3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@Ђ
D__inference_flatten_layer_call_and_return_conditional_losses_4654534c3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Е
)__inference_flatten_layer_call_fn_4654528X3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€@Ѕ
B__inference_model_layer_call_and_return_conditional_losses_4653316ъLST… Ћћop≈∆«»Ќќѕ–—“”‘ЙКСТ’÷„ЎўЏџ№ЂђЁёяа√ƒыҐч
пҐл
аЪ№
!К
x_input€€€€€€€€€
!К
t_input€€€€€€€€€
0К-
	Xbc_layer€€€€€€€€€€€€€€€€€€
0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ѕ
B__inference_model_layer_call_and_return_conditional_losses_4653497ъLST… Ћћop≈∆«»Ќќѕ–—“”‘ЙКСТ’÷„ЎўЏџ№ЂђЁёяа√ƒыҐч
пҐл
аЪ№
!К
x_input€€€€€€€€€
!К
t_input€€€€€€€€€
0К-
	Xbc_layer€€€€€€€€€€€€€€€€€€
0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ы
'__inference_model_layer_call_fn_4653586пLST… Ћћop≈∆«»Ќќѕ–—“”‘ЙКСТ’÷„ЎўЏџ№ЂђЁёяа√ƒыҐч
пҐл
аЪ№
!К
x_input€€€€€€€€€
!К
t_input€€€€€€€€€
0К-
	Xbc_layer€€€€€€€€€€€€€€€€€€
0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€Ы
'__inference_model_layer_call_fn_4653675пLST… Ћћop≈∆«»Ќќѕ–—“”‘ЙКСТ’÷„ЎўЏџ№ЂђЁёяа√ƒыҐч
пҐл
аЪ№
!К
x_input€€€€€€€€€
!К
t_input€€€€€€€€€
0К-
	Xbc_layer€€€€€€€€€€€€€€€€€€
0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€Њ
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4654435ж’÷„ЎўЏџ№ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Њ
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4654471ж’÷„ЎўЏџ№ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p 
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Ш
8__inference_multi_head_attention_1_layer_call_fn_4654376џ’÷„ЎўЏџ№ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p
p 
™ "%К"
unknown€€€€€€€€€@Ш
8__inference_multi_head_attention_1_layer_call_fn_4654399џ’÷„ЎўЏџ№ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p 
p 
™ "%К"
unknown€€€€€€€€€@Љ
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654225жЌќѕ–—“”‘ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Љ
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4654261жЌќѕ–—“”‘ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p 
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Ц
6__inference_multi_head_attention_layer_call_fn_4654166џЌќѕ–—“”‘ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p
p 
™ "%К"
unknown€€€€€€€€€@Ц
6__inference_multi_head_attention_layer_call_fn_4654189џЌќѕ–—“”‘ЯҐЫ
УҐП
#К 
query€€€€€€€€€@
,К)
value€€€€€€€€€€€€€€€€€€@
*К'
key€€€€€€€€€€€€€€€€€€@

 
p 
p 
p 
™ "%К"
unknown€€€€€€€€€@©
@__inference_ou1_layer_call_and_return_conditional_losses_4654768eЁё/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Г
%__inference_ou1_layer_call_fn_4654758ZЁё/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€@©
@__inference_ou2_layer_call_and_return_conditional_losses_4654797eяа/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€@
Ъ Г
%__inference_ou2_layer_call_fn_4654787Zяа/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€@Ѓ
E__inference_output_u_layer_call_and_return_conditional_losses_4654553e√ƒ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ И
*__inference_output_u_layer_call_fn_4654543Z√ƒ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "!К
unknown€€€€€€€€€Ђ
H__inference_rescaling_1_layer_call_and_return_conditional_losses_4653992_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
-__inference_rescaling_1_layer_call_fn_4653984T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€≈
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4654019y<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Я
-__inference_rescaling_2_layer_call_fn_4654010n<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ ".К+
unknown€€€€€€€€€€€€€€€€€€≈
H__inference_rescaling_3_layer_call_and_return_conditional_losses_4654032y<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Я
-__inference_rescaling_3_layer_call_fn_4654024n<Ґ9
2Ґ/
-К*
inputs€€€€€€€€€€€€€€€€€€
™ ".К+
unknown€€€€€€€€€€€€€€€€€€©
F__inference_rescaling_layer_call_and_return_conditional_losses_4653979_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Г
+__inference_rescaling_layer_call_fn_4653970T/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€Ђ
D__inference_reshape_layer_call_and_return_conditional_losses_4654050c/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Е
)__inference_reshape_layer_call_fn_4654037X/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€ў
%__inference_signature_wrapper_4653965ѓLST… Ћћop≈∆«»Ќќѕ–—“”‘ЙКСТ’÷„ЎўЏџ№ЂђЁёяа√ƒ©Ґ•
Ґ 
Э™Щ
=
	Xbc_layer0К-
	xbc_layer€€€€€€€€€€€€€€€€€€
,
t_input!К
t_input€€€€€€€€€
=
	tbc_layer0К-
	tbc_layer€€€€€€€€€€€€€€€€€€
=
	ubc_layer0К-
	ubc_layer€€€€€€€€€€€€€€€€€€
,
x_input!К
x_input€€€€€€€€€"3™0
.
output_u"К
output_u€€€€€€€€€Љ
K__inference_spatial_layer1_layer_call_and_return_conditional_losses_4654592m≈∆3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Ц
0__inference_spatial_layer1_layer_call_fn_4654562b≈∆3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€@Љ
K__inference_spatial_layer2_layer_call_and_return_conditional_losses_4654641m«»3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Ц
0__inference_spatial_layer2_layer_call_fn_4654611b«»3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "%К"
unknown€€€€€€€€€@я
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652549З≈∆«»IҐF
?Ґ<
2К/
spatial_layer1_input€€€€€€€€€
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ я
S__inference_spatial_transformation_layer_call_and_return_conditional_losses_4652565З≈∆«»IҐF
?Ґ<
2К/
spatial_layer1_input€€€€€€€€€
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€@
Ъ Є
8__inference_spatial_transformation_layer_call_fn_4652578|≈∆«»IҐF
?Ґ<
2К/
spatial_layer1_input€€€€€€€€€
p

 
™ "%К"
unknown€€€€€€€€€@Є
8__inference_spatial_transformation_layer_call_fn_4652591|≈∆«»IҐF
?Ґ<
2К/
spatial_layer1_input€€€€€€€€€
p 

 
™ "%К"
unknown€€€€€€€€€@