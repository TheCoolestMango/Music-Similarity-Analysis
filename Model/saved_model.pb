ú	
ß
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
-
Sqrt
x"T
y"T"
Ttype:

2
7
Square
x"T
y"T"
Ttype:
2	
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.22v2.9.1-132-g18960c44ad38Ï

Adam/third_base_dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/third_base_dense/bias/v

0Adam/third_base_dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/third_base_dense/bias/v*
_output_shapes	
:*
dtype0

Adam/third_base_dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*/
shared_name Adam/third_base_dense/kernel/v

2Adam/third_base_dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/third_base_dense/kernel/v* 
_output_shapes
:
*
dtype0

Adam/second_base_dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/second_base_dense/bias/v

1Adam/second_base_dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/second_base_dense/bias/v*
_output_shapes	
:*
dtype0

Adam/second_base_dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*0
shared_name!Adam/second_base_dense/kernel/v

3Adam/second_base_dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/second_base_dense/kernel/v* 
_output_shapes
:
*
dtype0

Adam/first_base_dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/first_base_dense/bias/v

0Adam/first_base_dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/first_base_dense/bias/v*
_output_shapes	
:*
dtype0

Adam/first_base_dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*/
shared_name Adam/first_base_dense/kernel/v

2Adam/first_base_dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/first_base_dense/kernel/v* 
_output_shapes
:
*
dtype0

Adam/third_base_dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/third_base_dense/bias/m

0Adam/third_base_dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/third_base_dense/bias/m*
_output_shapes	
:*
dtype0

Adam/third_base_dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*/
shared_name Adam/third_base_dense/kernel/m

2Adam/third_base_dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/third_base_dense/kernel/m* 
_output_shapes
:
*
dtype0

Adam/second_base_dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/second_base_dense/bias/m

1Adam/second_base_dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/second_base_dense/bias/m*
_output_shapes	
:*
dtype0

Adam/second_base_dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*0
shared_name!Adam/second_base_dense/kernel/m

3Adam/second_base_dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/second_base_dense/kernel/m* 
_output_shapes
:
*
dtype0

Adam/first_base_dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/first_base_dense/bias/m

0Adam/first_base_dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/first_base_dense/bias/m*
_output_shapes	
:*
dtype0

Adam/first_base_dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*/
shared_name Adam/first_base_dense/kernel/m

2Adam/first_base_dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/first_base_dense/kernel/m* 
_output_shapes
:
*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

third_base_dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namethird_base_dense/bias
|
)third_base_dense/bias/Read/ReadVariableOpReadVariableOpthird_base_dense/bias*
_output_shapes	
:*
dtype0

third_base_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_namethird_base_dense/kernel

+third_base_dense/kernel/Read/ReadVariableOpReadVariableOpthird_base_dense/kernel* 
_output_shapes
:
*
dtype0

second_base_dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namesecond_base_dense/bias
~
*second_base_dense/bias/Read/ReadVariableOpReadVariableOpsecond_base_dense/bias*
_output_shapes	
:*
dtype0

second_base_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*)
shared_namesecond_base_dense/kernel

,second_base_dense/kernel/Read/ReadVariableOpReadVariableOpsecond_base_dense/kernel* 
_output_shapes
:
*
dtype0

first_base_dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namefirst_base_dense/bias
|
)first_base_dense/bias/Read/ReadVariableOpReadVariableOpfirst_base_dense/bias*
_output_shapes	
:*
dtype0

first_base_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_namefirst_base_dense/kernel

+first_base_dense/kernel/Read/ReadVariableOpReadVariableOpfirst_base_dense/kernel* 
_output_shapes
:
*
dtype0

NoOpNoOp
ì<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*§<
value<B< B<

layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
.
0
 1
!2
"3
#4
$5*
.
0
 1
!2
"3
#4
$5*
* 
°
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
*trace_0
+trace_1
,trace_2
-trace_3* 
6
.trace_0
/trace_1
0trace_2
1trace_3* 
* 
¼
2iter

3beta_1

4beta_2
	5decay
6learning_ratem m!m"m#m$mv v!v"v#v$v*

7serving_default* 
* 

8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
¦
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

kernel
 bias*
¦
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

!kernel
"bias*
¦
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

#kernel
$bias*
.
0
 1
!2
"3
#4
$5*
.
0
 1
!2
"3
#4
$5*
* 

Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_3* 
6
Ytrace_0
Ztrace_1
[trace_2
\trace_3* 
* 
* 
* 

]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

btrace_0
ctrace_1* 

dtrace_0
etrace_1* 
WQ
VARIABLE_VALUEfirst_base_dense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEfirst_base_dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEsecond_base_dense/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEsecond_base_dense/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEthird_base_dense/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEthird_base_dense/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

f0
g1*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 

mtrace_0* 

ntrace_0* 

0
 1*

0
 1*
* 

onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

ttrace_0* 

utrace_0* 

!0
"1*

!0
"1*
* 

vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 

#0
$1*

#0
$1*
* 

}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
'
0
1
2
3
4*
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
<
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*
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
0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
zt
VARIABLE_VALUEAdam/first_base_dense/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/first_base_dense/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/second_base_dense/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/second_base_dense/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/third_base_dense/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/third_base_dense/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/first_base_dense/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/first_base_dense/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/second_base_dense/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/second_base_dense/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/third_base_dense/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/third_base_dense/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_left_inputPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿ

serving_default_right_inputPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿ
õ
StatefulPartitionedCallStatefulPartitionedCallserving_default_left_inputserving_default_right_inputfirst_base_dense/kernelfirst_base_dense/biassecond_base_dense/kernelsecond_base_dense/biasthird_base_dense/kernelthird_base_dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1075067
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Å
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+first_base_dense/kernel/Read/ReadVariableOp)first_base_dense/bias/Read/ReadVariableOp,second_base_dense/kernel/Read/ReadVariableOp*second_base_dense/bias/Read/ReadVariableOp+third_base_dense/kernel/Read/ReadVariableOp)third_base_dense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp2Adam/first_base_dense/kernel/m/Read/ReadVariableOp0Adam/first_base_dense/bias/m/Read/ReadVariableOp3Adam/second_base_dense/kernel/m/Read/ReadVariableOp1Adam/second_base_dense/bias/m/Read/ReadVariableOp2Adam/third_base_dense/kernel/m/Read/ReadVariableOp0Adam/third_base_dense/bias/m/Read/ReadVariableOp2Adam/first_base_dense/kernel/v/Read/ReadVariableOp0Adam/first_base_dense/bias/v/Read/ReadVariableOp3Adam/second_base_dense/kernel/v/Read/ReadVariableOp1Adam/second_base_dense/bias/v/Read/ReadVariableOp2Adam/third_base_dense/kernel/v/Read/ReadVariableOp0Adam/third_base_dense/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_1075515
¤
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamefirst_base_dense/kernelfirst_base_dense/biassecond_base_dense/kernelsecond_base_dense/biasthird_base_dense/kernelthird_base_dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/first_base_dense/kernel/mAdam/first_base_dense/bias/mAdam/second_base_dense/kernel/mAdam/second_base_dense/bias/mAdam/third_base_dense/kernel/mAdam/third_base_dense/bias/mAdam/first_base_dense/kernel/vAdam/first_base_dense/bias/vAdam/second_base_dense/kernel/vAdam/second_base_dense/bias/vAdam/third_base_dense/kernel/vAdam/third_base_dense/bias/v*'
Tin 
2*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1075606ð
µ
ì
D__inference_model_6_layer_call_and_return_conditional_losses_1074749

inputs,
first_base_dense_1074733:
'
first_base_dense_1074735:	-
second_base_dense_1074738:
(
second_base_dense_1074740:	,
third_base_dense_1074743:
'
third_base_dense_1074745:	
identity¢(first_base_dense/StatefulPartitionedCall¢)second_base_dense/StatefulPartitionedCall¢(third_base_dense/StatefulPartitionedCallÇ
flatten_input/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flatten_input_layer_call_and_return_conditional_losses_1074605·
(first_base_dense/StatefulPartitionedCallStatefulPartitionedCall&flatten_input/PartitionedCall:output:0first_base_dense_1074733first_base_dense_1074735*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_first_base_dense_layer_call_and_return_conditional_losses_1074618Æ
)second_base_dense/StatefulPartitionedCallStatefulPartitionedCall1first_base_dense/StatefulPartitionedCall:output:0second_base_dense_1074738second_base_dense_1074740*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_second_base_dense_layer_call_and_return_conditional_losses_1074635Ã
(third_base_dense/StatefulPartitionedCallStatefulPartitionedCall2second_base_dense/StatefulPartitionedCall:output:0third_base_dense_1074743third_base_dense_1074745*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_third_base_dense_layer_call_and_return_conditional_losses_1074652
IdentityIdentity1third_base_dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp)^first_base_dense/StatefulPartitionedCall*^second_base_dense/StatefulPartitionedCall)^third_base_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : 2T
(first_base_dense/StatefulPartitionedCall(first_base_dense/StatefulPartitionedCall2V
)second_base_dense/StatefulPartitionedCall)second_base_dense/StatefulPartitionedCall2T
(third_base_dense/StatefulPartitionedCall(third_base_dense/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
f
J__inference_flatten_input_layer_call_and_return_conditional_losses_1075350

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



)__inference_model_7_layer_call_fn_1075103
inputs_0
inputs_1
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_7_layer_call_and_return_conditional_losses_1074956o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
¥

D__inference_model_7_layer_call_and_return_conditional_losses_1075041

left_input
right_input#
model_6_1075019:

model_6_1075021:	#
model_6_1075023:

model_6_1075025:	#
model_6_1075027:

model_6_1075029:	
identity¢model_6/StatefulPartitionedCall¢!model_6/StatefulPartitionedCall_1Ã
model_6/StatefulPartitionedCallStatefulPartitionedCall
left_inputmodel_6_1075019model_6_1075021model_6_1075023model_6_1075025model_6_1075027model_6_1075029*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074749Æ
!model_6/StatefulPartitionedCall_1StatefulPartitionedCallright_inputmodel_6_1075019model_6_1075021model_6_1075023model_6_1075025model_6_1075027model_6_1075029*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074749
output_layer/PartitionedCallPartitionedCall(model_6/StatefulPartitionedCall:output:0*model_6/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_1074906t
IdentityIdentity%output_layer/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^model_6/StatefulPartitionedCall"^model_6/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
model_6/StatefulPartitionedCallmodel_6/StatefulPartitionedCall2F
!model_6/StatefulPartitionedCall_1!model_6/StatefulPartitionedCall_1:\ X
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
left_input:]Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameright_input
Þ
¢
2__inference_third_base_dense_layer_call_fn_1075399

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_third_base_dense_layer_call_and_return_conditional_losses_1074652p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

 
)__inference_model_7_layer_call_fn_1074882

left_input
right_input
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCall
left_inputright_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_7_layer_call_and_return_conditional_losses_1074867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
left_input:]Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameright_input
¤

u
I__inference_output_layer_layer_call_and_return_conditional_losses_1075339
inputs_0
inputs_1
identityQ
subSubinputs_0inputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
SquareSquaresub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(N
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3f
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    c
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1


s
I__inference_output_layer_layer_call_and_return_conditional_losses_1074906

inputs
inputs_1
identityO
subSubinputsinputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
SquareSquaresub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(N
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3f
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    c
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

D__inference_model_7_layer_call_and_return_conditional_losses_1075015

left_input
right_input#
model_6_1074993:

model_6_1074995:	#
model_6_1074997:

model_6_1074999:	#
model_6_1075001:

model_6_1075003:	
identity¢model_6/StatefulPartitionedCall¢!model_6/StatefulPartitionedCall_1Ã
model_6/StatefulPartitionedCallStatefulPartitionedCall
left_inputmodel_6_1074993model_6_1074995model_6_1074997model_6_1074999model_6_1075001model_6_1075003*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074659Æ
!model_6/StatefulPartitionedCall_1StatefulPartitionedCallright_inputmodel_6_1074993model_6_1074995model_6_1074997model_6_1074999model_6_1075001model_6_1075003*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074659
output_layer/PartitionedCallPartitionedCall(model_6/StatefulPartitionedCall:output:0*model_6/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_1074864t
IdentityIdentity%output_layer/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^model_6/StatefulPartitionedCall"^model_6/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
model_6/StatefulPartitionedCallmodel_6/StatefulPartitionedCall2F
!model_6/StatefulPartitionedCall_1!model_6/StatefulPartitionedCall_1:\ X
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
left_input:]Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameright_input
Þ
¢
2__inference_first_base_dense_layer_call_fn_1075359

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_first_base_dense_layer_call_and_return_conditional_losses_1074618p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

 
)__inference_model_7_layer_call_fn_1074989

left_input
right_input
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCall
left_inputright_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_7_layer_call_and_return_conditional_losses_1074956o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
left_input:]Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameright_input
Á
ð
D__inference_model_6_layer_call_and_return_conditional_losses_1074801

base_input,
first_base_dense_1074785:
'
first_base_dense_1074787:	-
second_base_dense_1074790:
(
second_base_dense_1074792:	,
third_base_dense_1074795:
'
third_base_dense_1074797:	
identity¢(first_base_dense/StatefulPartitionedCall¢)second_base_dense/StatefulPartitionedCall¢(third_base_dense/StatefulPartitionedCallË
flatten_input/PartitionedCallPartitionedCall
base_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flatten_input_layer_call_and_return_conditional_losses_1074605·
(first_base_dense/StatefulPartitionedCallStatefulPartitionedCall&flatten_input/PartitionedCall:output:0first_base_dense_1074785first_base_dense_1074787*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_first_base_dense_layer_call_and_return_conditional_losses_1074618Æ
)second_base_dense/StatefulPartitionedCallStatefulPartitionedCall1first_base_dense/StatefulPartitionedCall:output:0second_base_dense_1074790second_base_dense_1074792*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_second_base_dense_layer_call_and_return_conditional_losses_1074635Ã
(third_base_dense/StatefulPartitionedCallStatefulPartitionedCall2second_base_dense/StatefulPartitionedCall:output:0third_base_dense_1074795third_base_dense_1074797*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_third_base_dense_layer_call_and_return_conditional_losses_1074652
IdentityIdentity1third_base_dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp)^first_base_dense/StatefulPartitionedCall*^second_base_dense/StatefulPartitionedCall)^third_base_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : 2T
(first_base_dense/StatefulPartitionedCall(first_base_dense/StatefulPartitionedCall2V
)second_base_dense/StatefulPartitionedCall)second_base_dense/StatefulPartitionedCall2T
(third_base_dense/StatefulPartitionedCall(third_base_dense/StatefulPartitionedCall:\ X
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
base_input


s
I__inference_output_layer_layer_call_and_return_conditional_losses_1074864

inputs
inputs_1
identityO
subSubinputsinputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
SquareSquaresub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(N
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3f
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    c
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯Q
	
D__inference_model_7_layer_call_and_return_conditional_losses_1075211
inputs_0
inputs_1K
7model_6_first_base_dense_matmul_readvariableop_resource:
G
8model_6_first_base_dense_biasadd_readvariableop_resource:	L
8model_6_second_base_dense_matmul_readvariableop_resource:
H
9model_6_second_base_dense_biasadd_readvariableop_resource:	K
7model_6_third_base_dense_matmul_readvariableop_resource:
G
8model_6_third_base_dense_biasadd_readvariableop_resource:	
identity¢/model_6/first_base_dense/BiasAdd/ReadVariableOp¢1model_6/first_base_dense/BiasAdd_1/ReadVariableOp¢.model_6/first_base_dense/MatMul/ReadVariableOp¢0model_6/first_base_dense/MatMul_1/ReadVariableOp¢0model_6/second_base_dense/BiasAdd/ReadVariableOp¢2model_6/second_base_dense/BiasAdd_1/ReadVariableOp¢/model_6/second_base_dense/MatMul/ReadVariableOp¢1model_6/second_base_dense/MatMul_1/ReadVariableOp¢/model_6/third_base_dense/BiasAdd/ReadVariableOp¢1model_6/third_base_dense/BiasAdd_1/ReadVariableOp¢.model_6/third_base_dense/MatMul/ReadVariableOp¢0model_6/third_base_dense/MatMul_1/ReadVariableOpl
model_6/flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
model_6/flatten_input/ReshapeReshapeinputs_0$model_6/flatten_input/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
.model_6/first_base_dense/MatMul/ReadVariableOpReadVariableOp7model_6_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¼
model_6/first_base_dense/MatMulMatMul&model_6/flatten_input/Reshape:output:06model_6/first_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/model_6/first_base_dense/BiasAdd/ReadVariableOpReadVariableOp8model_6_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Â
 model_6/first_base_dense/BiasAddBiasAdd)model_6/first_base_dense/MatMul:product:07model_6/first_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 model_6/first_base_dense/SigmoidSigmoid)model_6/first_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
/model_6/second_base_dense/MatMul/ReadVariableOpReadVariableOp8model_6_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¼
 model_6/second_base_dense/MatMulMatMul$model_6/first_base_dense/Sigmoid:y:07model_6/second_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0model_6/second_base_dense/BiasAdd/ReadVariableOpReadVariableOp9model_6_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
!model_6/second_base_dense/BiasAddBiasAdd*model_6/second_base_dense/MatMul:product:08model_6/second_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!model_6/second_base_dense/SigmoidSigmoid*model_6/second_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
.model_6/third_base_dense/MatMul/ReadVariableOpReadVariableOp7model_6_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0»
model_6/third_base_dense/MatMulMatMul%model_6/second_base_dense/Sigmoid:y:06model_6/third_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/model_6/third_base_dense/BiasAdd/ReadVariableOpReadVariableOp8model_6_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Â
 model_6/third_base_dense/BiasAddBiasAdd)model_6/third_base_dense/MatMul:product:07model_6/third_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 model_6/third_base_dense/SigmoidSigmoid)model_6/third_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
model_6/flatten_input/Const_1Const*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
model_6/flatten_input/Reshape_1Reshapeinputs_1&model_6/flatten_input/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
0model_6/first_base_dense/MatMul_1/ReadVariableOpReadVariableOp7model_6_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Â
!model_6/first_base_dense/MatMul_1MatMul(model_6/flatten_input/Reshape_1:output:08model_6/first_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
1model_6/first_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp8model_6_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0È
"model_6/first_base_dense/BiasAdd_1BiasAdd+model_6/first_base_dense/MatMul_1:product:09model_6/first_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"model_6/first_base_dense/Sigmoid_1Sigmoid+model_6/first_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
1model_6/second_base_dense/MatMul_1/ReadVariableOpReadVariableOp8model_6_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Â
"model_6/second_base_dense/MatMul_1MatMul&model_6/first_base_dense/Sigmoid_1:y:09model_6/second_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
2model_6/second_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp9model_6_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ë
#model_6/second_base_dense/BiasAdd_1BiasAdd,model_6/second_base_dense/MatMul_1:product:0:model_6/second_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#model_6/second_base_dense/Sigmoid_1Sigmoid,model_6/second_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
0model_6/third_base_dense/MatMul_1/ReadVariableOpReadVariableOp7model_6_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Á
!model_6/third_base_dense/MatMul_1MatMul'model_6/second_base_dense/Sigmoid_1:y:08model_6/third_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
1model_6/third_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp8model_6_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0È
"model_6/third_base_dense/BiasAdd_1BiasAdd+model_6/third_base_dense/MatMul_1:product:09model_6/third_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"model_6/third_base_dense/Sigmoid_1Sigmoid+model_6/third_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output_layer/subSub$model_6/third_base_dense/Sigmoid:y:0&model_6/third_base_dense/Sigmoid_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
output_layer/SquareSquareoutput_layer/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"output_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
output_layer/SumSumoutput_layer/Square:y:0+output_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims([
output_layer/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
output_layer/MaximumMaximumoutput_layer/Sum:output:0output_layer/Maximum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
output_layer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
output_layer/Maximum_1Maximumoutput_layer/Maximum:z:0output_layer/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
output_layer/SqrtSqrtoutput_layer/Maximum_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentityoutput_layer/Sqrt:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
NoOpNoOp0^model_6/first_base_dense/BiasAdd/ReadVariableOp2^model_6/first_base_dense/BiasAdd_1/ReadVariableOp/^model_6/first_base_dense/MatMul/ReadVariableOp1^model_6/first_base_dense/MatMul_1/ReadVariableOp1^model_6/second_base_dense/BiasAdd/ReadVariableOp3^model_6/second_base_dense/BiasAdd_1/ReadVariableOp0^model_6/second_base_dense/MatMul/ReadVariableOp2^model_6/second_base_dense/MatMul_1/ReadVariableOp0^model_6/third_base_dense/BiasAdd/ReadVariableOp2^model_6/third_base_dense/BiasAdd_1/ReadVariableOp/^model_6/third_base_dense/MatMul/ReadVariableOp1^model_6/third_base_dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2b
/model_6/first_base_dense/BiasAdd/ReadVariableOp/model_6/first_base_dense/BiasAdd/ReadVariableOp2f
1model_6/first_base_dense/BiasAdd_1/ReadVariableOp1model_6/first_base_dense/BiasAdd_1/ReadVariableOp2`
.model_6/first_base_dense/MatMul/ReadVariableOp.model_6/first_base_dense/MatMul/ReadVariableOp2d
0model_6/first_base_dense/MatMul_1/ReadVariableOp0model_6/first_base_dense/MatMul_1/ReadVariableOp2d
0model_6/second_base_dense/BiasAdd/ReadVariableOp0model_6/second_base_dense/BiasAdd/ReadVariableOp2h
2model_6/second_base_dense/BiasAdd_1/ReadVariableOp2model_6/second_base_dense/BiasAdd_1/ReadVariableOp2b
/model_6/second_base_dense/MatMul/ReadVariableOp/model_6/second_base_dense/MatMul/ReadVariableOp2f
1model_6/second_base_dense/MatMul_1/ReadVariableOp1model_6/second_base_dense/MatMul_1/ReadVariableOp2b
/model_6/third_base_dense/BiasAdd/ReadVariableOp/model_6/third_base_dense/BiasAdd/ReadVariableOp2f
1model_6/third_base_dense/BiasAdd_1/ReadVariableOp1model_6/third_base_dense/BiasAdd_1/ReadVariableOp2`
.model_6/third_base_dense/MatMul/ReadVariableOp.model_6/third_base_dense/MatMul/ReadVariableOp2d
0model_6/third_base_dense/MatMul_1/ReadVariableOp0model_6/third_base_dense/MatMul_1/ReadVariableOp:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1


D__inference_model_7_layer_call_and_return_conditional_losses_1074867

inputs
inputs_1#
model_6_1074830:

model_6_1074832:	#
model_6_1074834:

model_6_1074836:	#
model_6_1074838:

model_6_1074840:	
identity¢model_6/StatefulPartitionedCall¢!model_6/StatefulPartitionedCall_1¿
model_6/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_6_1074830model_6_1074832model_6_1074834model_6_1074836model_6_1074838model_6_1074840*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074659Ã
!model_6/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_6_1074830model_6_1074832model_6_1074834model_6_1074836model_6_1074838model_6_1074840*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074659
output_layer/PartitionedCallPartitionedCall(model_6/StatefulPartitionedCall:output:0*model_6/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_1074864t
IdentityIdentity%output_layer/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^model_6/StatefulPartitionedCall"^model_6/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
model_6/StatefulPartitionedCallmodel_6/StatefulPartitionedCall2F
!model_6/StatefulPartitionedCall_1!model_6/StatefulPartitionedCall_1:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



%__inference_signature_wrapper_1075067

left_input
right_input
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
left_inputright_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_1074592o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
left_input:]Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameright_input
¯Q
	
D__inference_model_7_layer_call_and_return_conditional_losses_1075157
inputs_0
inputs_1K
7model_6_first_base_dense_matmul_readvariableop_resource:
G
8model_6_first_base_dense_biasadd_readvariableop_resource:	L
8model_6_second_base_dense_matmul_readvariableop_resource:
H
9model_6_second_base_dense_biasadd_readvariableop_resource:	K
7model_6_third_base_dense_matmul_readvariableop_resource:
G
8model_6_third_base_dense_biasadd_readvariableop_resource:	
identity¢/model_6/first_base_dense/BiasAdd/ReadVariableOp¢1model_6/first_base_dense/BiasAdd_1/ReadVariableOp¢.model_6/first_base_dense/MatMul/ReadVariableOp¢0model_6/first_base_dense/MatMul_1/ReadVariableOp¢0model_6/second_base_dense/BiasAdd/ReadVariableOp¢2model_6/second_base_dense/BiasAdd_1/ReadVariableOp¢/model_6/second_base_dense/MatMul/ReadVariableOp¢1model_6/second_base_dense/MatMul_1/ReadVariableOp¢/model_6/third_base_dense/BiasAdd/ReadVariableOp¢1model_6/third_base_dense/BiasAdd_1/ReadVariableOp¢.model_6/third_base_dense/MatMul/ReadVariableOp¢0model_6/third_base_dense/MatMul_1/ReadVariableOpl
model_6/flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
model_6/flatten_input/ReshapeReshapeinputs_0$model_6/flatten_input/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
.model_6/first_base_dense/MatMul/ReadVariableOpReadVariableOp7model_6_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¼
model_6/first_base_dense/MatMulMatMul&model_6/flatten_input/Reshape:output:06model_6/first_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/model_6/first_base_dense/BiasAdd/ReadVariableOpReadVariableOp8model_6_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Â
 model_6/first_base_dense/BiasAddBiasAdd)model_6/first_base_dense/MatMul:product:07model_6/first_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 model_6/first_base_dense/SigmoidSigmoid)model_6/first_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
/model_6/second_base_dense/MatMul/ReadVariableOpReadVariableOp8model_6_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¼
 model_6/second_base_dense/MatMulMatMul$model_6/first_base_dense/Sigmoid:y:07model_6/second_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0model_6/second_base_dense/BiasAdd/ReadVariableOpReadVariableOp9model_6_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
!model_6/second_base_dense/BiasAddBiasAdd*model_6/second_base_dense/MatMul:product:08model_6/second_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!model_6/second_base_dense/SigmoidSigmoid*model_6/second_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
.model_6/third_base_dense/MatMul/ReadVariableOpReadVariableOp7model_6_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0»
model_6/third_base_dense/MatMulMatMul%model_6/second_base_dense/Sigmoid:y:06model_6/third_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/model_6/third_base_dense/BiasAdd/ReadVariableOpReadVariableOp8model_6_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Â
 model_6/third_base_dense/BiasAddBiasAdd)model_6/third_base_dense/MatMul:product:07model_6/third_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 model_6/third_base_dense/SigmoidSigmoid)model_6/third_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
model_6/flatten_input/Const_1Const*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
model_6/flatten_input/Reshape_1Reshapeinputs_1&model_6/flatten_input/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
0model_6/first_base_dense/MatMul_1/ReadVariableOpReadVariableOp7model_6_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Â
!model_6/first_base_dense/MatMul_1MatMul(model_6/flatten_input/Reshape_1:output:08model_6/first_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
1model_6/first_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp8model_6_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0È
"model_6/first_base_dense/BiasAdd_1BiasAdd+model_6/first_base_dense/MatMul_1:product:09model_6/first_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"model_6/first_base_dense/Sigmoid_1Sigmoid+model_6/first_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
1model_6/second_base_dense/MatMul_1/ReadVariableOpReadVariableOp8model_6_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Â
"model_6/second_base_dense/MatMul_1MatMul&model_6/first_base_dense/Sigmoid_1:y:09model_6/second_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
2model_6/second_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp9model_6_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ë
#model_6/second_base_dense/BiasAdd_1BiasAdd,model_6/second_base_dense/MatMul_1:product:0:model_6/second_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#model_6/second_base_dense/Sigmoid_1Sigmoid,model_6/second_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
0model_6/third_base_dense/MatMul_1/ReadVariableOpReadVariableOp7model_6_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Á
!model_6/third_base_dense/MatMul_1MatMul'model_6/second_base_dense/Sigmoid_1:y:08model_6/third_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
1model_6/third_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp8model_6_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0È
"model_6/third_base_dense/BiasAdd_1BiasAdd+model_6/third_base_dense/MatMul_1:product:09model_6/third_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"model_6/third_base_dense/Sigmoid_1Sigmoid+model_6/third_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output_layer/subSub$model_6/third_base_dense/Sigmoid:y:0&model_6/third_base_dense/Sigmoid_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
output_layer/SquareSquareoutput_layer/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"output_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
output_layer/SumSumoutput_layer/Square:y:0+output_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims([
output_layer/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
output_layer/MaximumMaximumoutput_layer/Sum:output:0output_layer/Maximum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
output_layer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
output_layer/Maximum_1Maximumoutput_layer/Maximum:z:0output_layer/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
output_layer/SqrtSqrtoutput_layer/Maximum_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentityoutput_layer/Sqrt:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
NoOpNoOp0^model_6/first_base_dense/BiasAdd/ReadVariableOp2^model_6/first_base_dense/BiasAdd_1/ReadVariableOp/^model_6/first_base_dense/MatMul/ReadVariableOp1^model_6/first_base_dense/MatMul_1/ReadVariableOp1^model_6/second_base_dense/BiasAdd/ReadVariableOp3^model_6/second_base_dense/BiasAdd_1/ReadVariableOp0^model_6/second_base_dense/MatMul/ReadVariableOp2^model_6/second_base_dense/MatMul_1/ReadVariableOp0^model_6/third_base_dense/BiasAdd/ReadVariableOp2^model_6/third_base_dense/BiasAdd_1/ReadVariableOp/^model_6/third_base_dense/MatMul/ReadVariableOp1^model_6/third_base_dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2b
/model_6/first_base_dense/BiasAdd/ReadVariableOp/model_6/first_base_dense/BiasAdd/ReadVariableOp2f
1model_6/first_base_dense/BiasAdd_1/ReadVariableOp1model_6/first_base_dense/BiasAdd_1/ReadVariableOp2`
.model_6/first_base_dense/MatMul/ReadVariableOp.model_6/first_base_dense/MatMul/ReadVariableOp2d
0model_6/first_base_dense/MatMul_1/ReadVariableOp0model_6/first_base_dense/MatMul_1/ReadVariableOp2d
0model_6/second_base_dense/BiasAdd/ReadVariableOp0model_6/second_base_dense/BiasAdd/ReadVariableOp2h
2model_6/second_base_dense/BiasAdd_1/ReadVariableOp2model_6/second_base_dense/BiasAdd_1/ReadVariableOp2b
/model_6/second_base_dense/MatMul/ReadVariableOp/model_6/second_base_dense/MatMul/ReadVariableOp2f
1model_6/second_base_dense/MatMul_1/ReadVariableOp1model_6/second_base_dense/MatMul_1/ReadVariableOp2b
/model_6/third_base_dense/BiasAdd/ReadVariableOp/model_6/third_base_dense/BiasAdd/ReadVariableOp2f
1model_6/third_base_dense/BiasAdd_1/ReadVariableOp1model_6/third_base_dense/BiasAdd_1/ReadVariableOp2`
.model_6/third_base_dense/MatMul/ReadVariableOp.model_6/third_base_dense/MatMul/ReadVariableOp2d
0model_6/third_base_dense/MatMul_1/ReadVariableOp0model_6/third_base_dense/MatMul_1/ReadVariableOp:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
ÜZ


"__inference__wrapped_model_1074592

left_input
right_inputS
?model_7_model_6_first_base_dense_matmul_readvariableop_resource:
O
@model_7_model_6_first_base_dense_biasadd_readvariableop_resource:	T
@model_7_model_6_second_base_dense_matmul_readvariableop_resource:
P
Amodel_7_model_6_second_base_dense_biasadd_readvariableop_resource:	S
?model_7_model_6_third_base_dense_matmul_readvariableop_resource:
O
@model_7_model_6_third_base_dense_biasadd_readvariableop_resource:	
identity¢7model_7/model_6/first_base_dense/BiasAdd/ReadVariableOp¢9model_7/model_6/first_base_dense/BiasAdd_1/ReadVariableOp¢6model_7/model_6/first_base_dense/MatMul/ReadVariableOp¢8model_7/model_6/first_base_dense/MatMul_1/ReadVariableOp¢8model_7/model_6/second_base_dense/BiasAdd/ReadVariableOp¢:model_7/model_6/second_base_dense/BiasAdd_1/ReadVariableOp¢7model_7/model_6/second_base_dense/MatMul/ReadVariableOp¢9model_7/model_6/second_base_dense/MatMul_1/ReadVariableOp¢7model_7/model_6/third_base_dense/BiasAdd/ReadVariableOp¢9model_7/model_6/third_base_dense/BiasAdd_1/ReadVariableOp¢6model_7/model_6/third_base_dense/MatMul/ReadVariableOp¢8model_7/model_6/third_base_dense/MatMul_1/ReadVariableOpt
#model_7/model_6/flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  
%model_7/model_6/flatten_input/ReshapeReshape
left_input,model_7/model_6/flatten_input/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
6model_7/model_6/first_base_dense/MatMul/ReadVariableOpReadVariableOp?model_7_model_6_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ô
'model_7/model_6/first_base_dense/MatMulMatMul.model_7/model_6/flatten_input/Reshape:output:0>model_7/model_6/first_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
7model_7/model_6/first_base_dense/BiasAdd/ReadVariableOpReadVariableOp@model_7_model_6_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
(model_7/model_6/first_base_dense/BiasAddBiasAdd1model_7/model_6/first_base_dense/MatMul:product:0?model_7/model_6/first_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(model_7/model_6/first_base_dense/SigmoidSigmoid1model_7/model_6/first_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
7model_7/model_6/second_base_dense/MatMul/ReadVariableOpReadVariableOp@model_7_model_6_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ô
(model_7/model_6/second_base_dense/MatMulMatMul,model_7/model_6/first_base_dense/Sigmoid:y:0?model_7/model_6/second_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
8model_7/model_6/second_base_dense/BiasAdd/ReadVariableOpReadVariableOpAmodel_7_model_6_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ý
)model_7/model_6/second_base_dense/BiasAddBiasAdd2model_7/model_6/second_base_dense/MatMul:product:0@model_7/model_6/second_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_7/model_6/second_base_dense/SigmoidSigmoid2model_7/model_6/second_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
6model_7/model_6/third_base_dense/MatMul/ReadVariableOpReadVariableOp?model_7_model_6_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ó
'model_7/model_6/third_base_dense/MatMulMatMul-model_7/model_6/second_base_dense/Sigmoid:y:0>model_7/model_6/third_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
7model_7/model_6/third_base_dense/BiasAdd/ReadVariableOpReadVariableOp@model_7_model_6_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ú
(model_7/model_6/third_base_dense/BiasAddBiasAdd1model_7/model_6/third_base_dense/MatMul:product:0?model_7/model_6/third_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(model_7/model_6/third_base_dense/SigmoidSigmoid1model_7/model_6/third_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
%model_7/model_6/flatten_input/Const_1Const*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ¢
'model_7/model_6/flatten_input/Reshape_1Reshaperight_input.model_7/model_6/flatten_input/Const_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
8model_7/model_6/first_base_dense/MatMul_1/ReadVariableOpReadVariableOp?model_7_model_6_first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ú
)model_7/model_6/first_base_dense/MatMul_1MatMul0model_7/model_6/flatten_input/Reshape_1:output:0@model_7/model_6/first_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
9model_7/model_6/first_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp@model_7_model_6_first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0à
*model_7/model_6/first_base_dense/BiasAdd_1BiasAdd3model_7/model_6/first_base_dense/MatMul_1:product:0Amodel_7/model_6/first_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_7/model_6/first_base_dense/Sigmoid_1Sigmoid3model_7/model_6/first_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
9model_7/model_6/second_base_dense/MatMul_1/ReadVariableOpReadVariableOp@model_7_model_6_second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ú
*model_7/model_6/second_base_dense/MatMul_1MatMul.model_7/model_6/first_base_dense/Sigmoid_1:y:0Amodel_7/model_6/second_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
:model_7/model_6/second_base_dense/BiasAdd_1/ReadVariableOpReadVariableOpAmodel_7_model_6_second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ã
+model_7/model_6/second_base_dense/BiasAdd_1BiasAdd4model_7/model_6/second_base_dense/MatMul_1:product:0Bmodel_7/model_6/second_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+model_7/model_6/second_base_dense/Sigmoid_1Sigmoid4model_7/model_6/second_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
8model_7/model_6/third_base_dense/MatMul_1/ReadVariableOpReadVariableOp?model_7_model_6_third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ù
)model_7/model_6/third_base_dense/MatMul_1MatMul/model_7/model_6/second_base_dense/Sigmoid_1:y:0@model_7/model_6/third_base_dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
9model_7/model_6/third_base_dense/BiasAdd_1/ReadVariableOpReadVariableOp@model_7_model_6_third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0à
*model_7/model_6/third_base_dense/BiasAdd_1BiasAdd3model_7/model_6/third_base_dense/MatMul_1:product:0Amodel_7/model_6/third_base_dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_7/model_6/third_base_dense/Sigmoid_1Sigmoid3model_7/model_6/third_base_dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
model_7/output_layer/subSub,model_7/model_6/third_base_dense/Sigmoid:y:0.model_7/model_6/third_base_dense/Sigmoid_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
model_7/output_layer/SquareSquaremodel_7/output_layer/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
*model_7/output_layer/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :¸
model_7/output_layer/SumSummodel_7/output_layer/Square:y:03model_7/output_layer/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(c
model_7/output_layer/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3¥
model_7/output_layer/MaximumMaximum!model_7/output_layer/Sum:output:0'model_7/output_layer/Maximum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
model_7/output_layer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¢
model_7/output_layer/Maximum_1Maximum model_7/output_layer/Maximum:z:0#model_7/output_layer/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
model_7/output_layer/SqrtSqrt"model_7/output_layer/Maximum_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentitymodel_7/output_layer/Sqrt:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp8^model_7/model_6/first_base_dense/BiasAdd/ReadVariableOp:^model_7/model_6/first_base_dense/BiasAdd_1/ReadVariableOp7^model_7/model_6/first_base_dense/MatMul/ReadVariableOp9^model_7/model_6/first_base_dense/MatMul_1/ReadVariableOp9^model_7/model_6/second_base_dense/BiasAdd/ReadVariableOp;^model_7/model_6/second_base_dense/BiasAdd_1/ReadVariableOp8^model_7/model_6/second_base_dense/MatMul/ReadVariableOp:^model_7/model_6/second_base_dense/MatMul_1/ReadVariableOp8^model_7/model_6/third_base_dense/BiasAdd/ReadVariableOp:^model_7/model_6/third_base_dense/BiasAdd_1/ReadVariableOp7^model_7/model_6/third_base_dense/MatMul/ReadVariableOp9^model_7/model_6/third_base_dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2r
7model_7/model_6/first_base_dense/BiasAdd/ReadVariableOp7model_7/model_6/first_base_dense/BiasAdd/ReadVariableOp2v
9model_7/model_6/first_base_dense/BiasAdd_1/ReadVariableOp9model_7/model_6/first_base_dense/BiasAdd_1/ReadVariableOp2p
6model_7/model_6/first_base_dense/MatMul/ReadVariableOp6model_7/model_6/first_base_dense/MatMul/ReadVariableOp2t
8model_7/model_6/first_base_dense/MatMul_1/ReadVariableOp8model_7/model_6/first_base_dense/MatMul_1/ReadVariableOp2t
8model_7/model_6/second_base_dense/BiasAdd/ReadVariableOp8model_7/model_6/second_base_dense/BiasAdd/ReadVariableOp2x
:model_7/model_6/second_base_dense/BiasAdd_1/ReadVariableOp:model_7/model_6/second_base_dense/BiasAdd_1/ReadVariableOp2r
7model_7/model_6/second_base_dense/MatMul/ReadVariableOp7model_7/model_6/second_base_dense/MatMul/ReadVariableOp2v
9model_7/model_6/second_base_dense/MatMul_1/ReadVariableOp9model_7/model_6/second_base_dense/MatMul_1/ReadVariableOp2r
7model_7/model_6/third_base_dense/BiasAdd/ReadVariableOp7model_7/model_6/third_base_dense/BiasAdd/ReadVariableOp2v
9model_7/model_6/third_base_dense/BiasAdd_1/ReadVariableOp9model_7/model_6/third_base_dense/BiasAdd_1/ReadVariableOp2p
6model_7/model_6/third_base_dense/MatMul/ReadVariableOp6model_7/model_6/third_base_dense/MatMul/ReadVariableOp2t
8model_7/model_6/third_base_dense/MatMul_1/ReadVariableOp8model_7/model_6/third_base_dense/MatMul_1/ReadVariableOp:\ X
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
left_input:]Y
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameright_input
¯<
¡
 __inference__traced_save_1075515
file_prefix6
2savev2_first_base_dense_kernel_read_readvariableop4
0savev2_first_base_dense_bias_read_readvariableop7
3savev2_second_base_dense_kernel_read_readvariableop5
1savev2_second_base_dense_bias_read_readvariableop6
2savev2_third_base_dense_kernel_read_readvariableop4
0savev2_third_base_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop=
9savev2_adam_first_base_dense_kernel_m_read_readvariableop;
7savev2_adam_first_base_dense_bias_m_read_readvariableop>
:savev2_adam_second_base_dense_kernel_m_read_readvariableop<
8savev2_adam_second_base_dense_bias_m_read_readvariableop=
9savev2_adam_third_base_dense_kernel_m_read_readvariableop;
7savev2_adam_third_base_dense_bias_m_read_readvariableop=
9savev2_adam_first_base_dense_kernel_v_read_readvariableop;
7savev2_adam_first_base_dense_bias_v_read_readvariableop>
:savev2_adam_second_base_dense_kernel_v_read_readvariableop<
8savev2_adam_second_base_dense_bias_v_read_readvariableop=
9savev2_adam_third_base_dense_kernel_v_read_readvariableop;
7savev2_adam_third_base_dense_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ç
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¥
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_first_base_dense_kernel_read_readvariableop0savev2_first_base_dense_bias_read_readvariableop3savev2_second_base_dense_kernel_read_readvariableop1savev2_second_base_dense_bias_read_readvariableop2savev2_third_base_dense_kernel_read_readvariableop0savev2_third_base_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop9savev2_adam_first_base_dense_kernel_m_read_readvariableop7savev2_adam_first_base_dense_bias_m_read_readvariableop:savev2_adam_second_base_dense_kernel_m_read_readvariableop8savev2_adam_second_base_dense_bias_m_read_readvariableop9savev2_adam_third_base_dense_kernel_m_read_readvariableop7savev2_adam_third_base_dense_bias_m_read_readvariableop9savev2_adam_first_base_dense_kernel_v_read_readvariableop7savev2_adam_first_base_dense_bias_v_read_readvariableop:savev2_adam_second_base_dense_kernel_v_read_readvariableop8savev2_adam_second_base_dense_bias_v_read_readvariableop9savev2_adam_third_base_dense_kernel_v_read_readvariableop7savev2_adam_third_base_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ö
_input_shapesÄ
Á: :
::
::
:: : : : : : : : : :
::
::
::
::
::
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::

_output_shapes
: 
À
K
/__inference_flatten_input_layer_call_fn_1075344

inputs
identity¹
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flatten_input_layer_call_and_return_conditional_losses_1074605a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à
£
3__inference_second_base_dense_layer_call_fn_1075379

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_second_base_dense_layer_call_and_return_conditional_losses_1074635p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì"
ò
D__inference_model_6_layer_call_and_return_conditional_losses_1075299

inputsC
/first_base_dense_matmul_readvariableop_resource:
?
0first_base_dense_biasadd_readvariableop_resource:	D
0second_base_dense_matmul_readvariableop_resource:
@
1second_base_dense_biasadd_readvariableop_resource:	C
/third_base_dense_matmul_readvariableop_resource:
?
0third_base_dense_biasadd_readvariableop_resource:	
identity¢'first_base_dense/BiasAdd/ReadVariableOp¢&first_base_dense/MatMul/ReadVariableOp¢(second_base_dense/BiasAdd/ReadVariableOp¢'second_base_dense/MatMul/ReadVariableOp¢'third_base_dense/BiasAdd/ReadVariableOp¢&third_base_dense/MatMul/ReadVariableOpd
flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  y
flatten_input/ReshapeReshapeinputsflatten_input/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&first_base_dense/MatMul/ReadVariableOpReadVariableOp/first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¤
first_base_dense/MatMulMatMulflatten_input/Reshape:output:0.first_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'first_base_dense/BiasAdd/ReadVariableOpReadVariableOp0first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ª
first_base_dense/BiasAddBiasAdd!first_base_dense/MatMul:product:0/first_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
first_base_dense/SigmoidSigmoid!first_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'second_base_dense/MatMul/ReadVariableOpReadVariableOp0second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¤
second_base_dense/MatMulMatMulfirst_base_dense/Sigmoid:y:0/second_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(second_base_dense/BiasAdd/ReadVariableOpReadVariableOp1second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
second_base_dense/BiasAddBiasAdd"second_base_dense/MatMul:product:00second_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
second_base_dense/SigmoidSigmoid"second_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&third_base_dense/MatMul/ReadVariableOpReadVariableOp/third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0£
third_base_dense/MatMulMatMulsecond_base_dense/Sigmoid:y:0.third_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'third_base_dense/BiasAdd/ReadVariableOpReadVariableOp0third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ª
third_base_dense/BiasAddBiasAdd!third_base_dense/MatMul:product:0/third_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
third_base_dense/SigmoidSigmoid!third_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentitythird_base_dense/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
NoOpNoOp(^first_base_dense/BiasAdd/ReadVariableOp'^first_base_dense/MatMul/ReadVariableOp)^second_base_dense/BiasAdd/ReadVariableOp(^second_base_dense/MatMul/ReadVariableOp(^third_base_dense/BiasAdd/ReadVariableOp'^third_base_dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : 2R
'first_base_dense/BiasAdd/ReadVariableOp'first_base_dense/BiasAdd/ReadVariableOp2P
&first_base_dense/MatMul/ReadVariableOp&first_base_dense/MatMul/ReadVariableOp2T
(second_base_dense/BiasAdd/ReadVariableOp(second_base_dense/BiasAdd/ReadVariableOp2R
'second_base_dense/MatMul/ReadVariableOp'second_base_dense/MatMul/ReadVariableOp2R
'third_base_dense/BiasAdd/ReadVariableOp'third_base_dense/BiasAdd/ReadVariableOp2P
&third_base_dense/MatMul/ReadVariableOp&third_base_dense/MatMul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯


M__inference_third_base_dense_layer_call_and_return_conditional_losses_1075410

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
f
J__inference_flatten_input_layer_call_and_return_conditional_losses_1074605

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯


M__inference_third_base_dense_layer_call_and_return_conditional_losses_1074652

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯


M__inference_first_base_dense_layer_call_and_return_conditional_losses_1075370

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°


N__inference_second_base_dense_layer_call_and_return_conditional_losses_1075390

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



)__inference_model_7_layer_call_fn_1075085
inputs_0
inputs_1
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_7_layer_call_and_return_conditional_losses_1074867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
m
¤
#__inference__traced_restore_1075606
file_prefix<
(assignvariableop_first_base_dense_kernel:
7
(assignvariableop_1_first_base_dense_bias:	?
+assignvariableop_2_second_base_dense_kernel:
8
)assignvariableop_3_second_base_dense_bias:	>
*assignvariableop_4_third_base_dense_kernel:
7
(assignvariableop_5_third_base_dense_bias:	&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: #
assignvariableop_13_total: #
assignvariableop_14_count: F
2assignvariableop_15_adam_first_base_dense_kernel_m:
?
0assignvariableop_16_adam_first_base_dense_bias_m:	G
3assignvariableop_17_adam_second_base_dense_kernel_m:
@
1assignvariableop_18_adam_second_base_dense_bias_m:	F
2assignvariableop_19_adam_third_base_dense_kernel_m:
?
0assignvariableop_20_adam_third_base_dense_bias_m:	F
2assignvariableop_21_adam_first_base_dense_kernel_v:
?
0assignvariableop_22_adam_first_base_dense_bias_v:	G
3assignvariableop_23_adam_second_base_dense_kernel_v:
@
1assignvariableop_24_adam_second_base_dense_bias_v:	F
2assignvariableop_25_adam_third_base_dense_kernel_v:
?
0assignvariableop_26_adam_third_base_dense_bias_v:	
identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ê
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¨
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B «
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp(assignvariableop_first_base_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp(assignvariableop_1_first_base_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp+assignvariableop_2_second_base_dense_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp)assignvariableop_3_second_base_dense_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp*assignvariableop_4_third_base_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp(assignvariableop_5_third_base_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_15AssignVariableOp2assignvariableop_15_adam_first_base_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_16AssignVariableOp0assignvariableop_16_adam_first_base_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_17AssignVariableOp3assignvariableop_17_adam_second_base_dense_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_18AssignVariableOp1assignvariableop_18_adam_second_base_dense_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_19AssignVariableOp2assignvariableop_19_adam_third_base_dense_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_third_base_dense_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_first_base_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_first_base_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_23AssignVariableOp3assignvariableop_23_adam_second_base_dense_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_24AssignVariableOp1assignvariableop_24_adam_second_base_dense_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_third_base_dense_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_third_base_dense_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¡
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Á
ð
D__inference_model_6_layer_call_and_return_conditional_losses_1074821

base_input,
first_base_dense_1074805:
'
first_base_dense_1074807:	-
second_base_dense_1074810:
(
second_base_dense_1074812:	,
third_base_dense_1074815:
'
third_base_dense_1074817:	
identity¢(first_base_dense/StatefulPartitionedCall¢)second_base_dense/StatefulPartitionedCall¢(third_base_dense/StatefulPartitionedCallË
flatten_input/PartitionedCallPartitionedCall
base_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flatten_input_layer_call_and_return_conditional_losses_1074605·
(first_base_dense/StatefulPartitionedCallStatefulPartitionedCall&flatten_input/PartitionedCall:output:0first_base_dense_1074805first_base_dense_1074807*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_first_base_dense_layer_call_and_return_conditional_losses_1074618Æ
)second_base_dense/StatefulPartitionedCallStatefulPartitionedCall1first_base_dense/StatefulPartitionedCall:output:0second_base_dense_1074810second_base_dense_1074812*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_second_base_dense_layer_call_and_return_conditional_losses_1074635Ã
(third_base_dense/StatefulPartitionedCallStatefulPartitionedCall2second_base_dense/StatefulPartitionedCall:output:0third_base_dense_1074815third_base_dense_1074817*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_third_base_dense_layer_call_and_return_conditional_losses_1074652
IdentityIdentity1third_base_dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp)^first_base_dense/StatefulPartitionedCall*^second_base_dense/StatefulPartitionedCall)^third_base_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : 2T
(first_base_dense/StatefulPartitionedCall(first_base_dense/StatefulPartitionedCall2V
)second_base_dense/StatefulPartitionedCall)second_base_dense/StatefulPartitionedCall2T
(third_base_dense/StatefulPartitionedCall(third_base_dense/StatefulPartitionedCall:\ X
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
base_input
³
Z
.__inference_output_layer_layer_call_fn_1075311
inputs_0
inputs_1
identityÄ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_1074906`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
¤

u
I__inference_output_layer_layer_call_and_return_conditional_losses_1075325
inputs_0
inputs_1
identityQ
subSubinputs_0inputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
SquareSquaresub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :y
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(N
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3f
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    c
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
°


N__inference_second_base_dense_layer_call_and_return_conditional_losses_1074635

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

)__inference_model_6_layer_call_fn_1075228

inputs
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074659p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

)__inference_model_6_layer_call_fn_1075245

inputs
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074749p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

)__inference_model_6_layer_call_fn_1074674

base_input
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
base_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074659p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
base_input
¯


M__inference_first_base_dense_layer_call_and_return_conditional_losses_1074618

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
Z
.__inference_output_layer_layer_call_fn_1075305
inputs_0
inputs_1
identityÄ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_1074864`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
µ
ì
D__inference_model_6_layer_call_and_return_conditional_losses_1074659

inputs,
first_base_dense_1074619:
'
first_base_dense_1074621:	-
second_base_dense_1074636:
(
second_base_dense_1074638:	,
third_base_dense_1074653:
'
third_base_dense_1074655:	
identity¢(first_base_dense/StatefulPartitionedCall¢)second_base_dense/StatefulPartitionedCall¢(third_base_dense/StatefulPartitionedCallÇ
flatten_input/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_flatten_input_layer_call_and_return_conditional_losses_1074605·
(first_base_dense/StatefulPartitionedCallStatefulPartitionedCall&flatten_input/PartitionedCall:output:0first_base_dense_1074619first_base_dense_1074621*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_first_base_dense_layer_call_and_return_conditional_losses_1074618Æ
)second_base_dense/StatefulPartitionedCallStatefulPartitionedCall1first_base_dense/StatefulPartitionedCall:output:0second_base_dense_1074636second_base_dense_1074638*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_second_base_dense_layer_call_and_return_conditional_losses_1074635Ã
(third_base_dense/StatefulPartitionedCallStatefulPartitionedCall2second_base_dense/StatefulPartitionedCall:output:0third_base_dense_1074653third_base_dense_1074655*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_third_base_dense_layer_call_and_return_conditional_losses_1074652
IdentityIdentity1third_base_dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp)^first_base_dense/StatefulPartitionedCall*^second_base_dense/StatefulPartitionedCall)^third_base_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : 2T
(first_base_dense/StatefulPartitionedCall(first_base_dense/StatefulPartitionedCall2V
)second_base_dense/StatefulPartitionedCall)second_base_dense/StatefulPartitionedCall2T
(third_base_dense/StatefulPartitionedCall(third_base_dense/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

)__inference_model_6_layer_call_fn_1074781

base_input
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
base_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074749p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
base_input
ì"
ò
D__inference_model_6_layer_call_and_return_conditional_losses_1075272

inputsC
/first_base_dense_matmul_readvariableop_resource:
?
0first_base_dense_biasadd_readvariableop_resource:	D
0second_base_dense_matmul_readvariableop_resource:
@
1second_base_dense_biasadd_readvariableop_resource:	C
/third_base_dense_matmul_readvariableop_resource:
?
0third_base_dense_biasadd_readvariableop_resource:	
identity¢'first_base_dense/BiasAdd/ReadVariableOp¢&first_base_dense/MatMul/ReadVariableOp¢(second_base_dense/BiasAdd/ReadVariableOp¢'second_base_dense/MatMul/ReadVariableOp¢'third_base_dense/BiasAdd/ReadVariableOp¢&third_base_dense/MatMul/ReadVariableOpd
flatten_input/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  y
flatten_input/ReshapeReshapeinputsflatten_input/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&first_base_dense/MatMul/ReadVariableOpReadVariableOp/first_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¤
first_base_dense/MatMulMatMulflatten_input/Reshape:output:0.first_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'first_base_dense/BiasAdd/ReadVariableOpReadVariableOp0first_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ª
first_base_dense/BiasAddBiasAdd!first_base_dense/MatMul:product:0/first_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
first_base_dense/SigmoidSigmoid!first_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'second_base_dense/MatMul/ReadVariableOpReadVariableOp0second_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¤
second_base_dense/MatMulMatMulfirst_base_dense/Sigmoid:y:0/second_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(second_base_dense/BiasAdd/ReadVariableOpReadVariableOp1second_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
second_base_dense/BiasAddBiasAdd"second_base_dense/MatMul:product:00second_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
second_base_dense/SigmoidSigmoid"second_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&third_base_dense/MatMul/ReadVariableOpReadVariableOp/third_base_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0£
third_base_dense/MatMulMatMulsecond_base_dense/Sigmoid:y:0.third_base_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'third_base_dense/BiasAdd/ReadVariableOpReadVariableOp0third_base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ª
third_base_dense/BiasAddBiasAdd!third_base_dense/MatMul:product:0/third_base_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
third_base_dense/SigmoidSigmoid!third_base_dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentitythird_base_dense/Sigmoid:y:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
NoOpNoOp(^first_base_dense/BiasAdd/ReadVariableOp'^first_base_dense/MatMul/ReadVariableOp)^second_base_dense/BiasAdd/ReadVariableOp(^second_base_dense/MatMul/ReadVariableOp(^third_base_dense/BiasAdd/ReadVariableOp'^third_base_dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ: : : : : : 2R
'first_base_dense/BiasAdd/ReadVariableOp'first_base_dense/BiasAdd/ReadVariableOp2P
&first_base_dense/MatMul/ReadVariableOp&first_base_dense/MatMul/ReadVariableOp2T
(second_base_dense/BiasAdd/ReadVariableOp(second_base_dense/BiasAdd/ReadVariableOp2R
'second_base_dense/MatMul/ReadVariableOp'second_base_dense/MatMul/ReadVariableOp2R
'third_base_dense/BiasAdd/ReadVariableOp'third_base_dense/BiasAdd/ReadVariableOp2P
&third_base_dense/MatMul/ReadVariableOp&third_base_dense/MatMul/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


D__inference_model_7_layer_call_and_return_conditional_losses_1074956

inputs
inputs_1#
model_6_1074934:

model_6_1074936:	#
model_6_1074938:

model_6_1074940:	#
model_6_1074942:

model_6_1074944:	
identity¢model_6/StatefulPartitionedCall¢!model_6/StatefulPartitionedCall_1¿
model_6/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_6_1074934model_6_1074936model_6_1074938model_6_1074940model_6_1074942model_6_1074944*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074749Ã
!model_6/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_6_1074934model_6_1074936model_6_1074938model_6_1074940model_6_1074942model_6_1074944*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1074749
output_layer/PartitionedCallPartitionedCall(model_6/StatefulPartitionedCall:output:0*model_6/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_1074906t
IdentityIdentity%output_layer/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp ^model_6/StatefulPartitionedCall"^model_6/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : 2B
model_6/StatefulPartitionedCallmodel_6/StatefulPartitionedCall2F
!model_6/StatefulPartitionedCall_1!model_6/StatefulPartitionedCall_1:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultø
J

left_input<
serving_default_left_input:0ÿÿÿÿÿÿÿÿÿ
L
right_input=
serving_default_right_input:0ÿÿÿÿÿÿÿÿÿ@
output_layer0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:éÍ
±
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
¶
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_network
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
 1
!2
"3
#4
$5"
trackable_list_wrapper
J
0
 1
!2
"3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
Ú
*trace_0
+trace_1
,trace_2
-trace_32ï
)__inference_model_7_layer_call_fn_1074882
)__inference_model_7_layer_call_fn_1075085
)__inference_model_7_layer_call_fn_1075103
)__inference_model_7_layer_call_fn_1074989À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z*trace_0z+trace_1z,trace_2z-trace_3
Æ
.trace_0
/trace_1
0trace_2
1trace_32Û
D__inference_model_7_layer_call_and_return_conditional_losses_1075157
D__inference_model_7_layer_call_and_return_conditional_losses_1075211
D__inference_model_7_layer_call_and_return_conditional_losses_1075015
D__inference_model_7_layer_call_and_return_conditional_losses_1075041À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z.trace_0z/trace_1z0trace_2z1trace_3
ÝBÚ
"__inference__wrapped_model_1074592
left_inputright_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ë
2iter

3beta_1

4beta_2
	5decay
6learning_ratem m!m"m#m$mv v!v"v#v$v"
	optimizer
,
7serving_default"
signature_map
"
_tf_keras_input_layer
¥
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
»
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

kernel
 bias"
_tf_keras_layer
»
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
»
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
J
0
 1
!2
"3
#4
$5"
trackable_list_wrapper
J
0
 1
!2
"3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ú
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_32ï
)__inference_model_6_layer_call_fn_1074674
)__inference_model_6_layer_call_fn_1075228
)__inference_model_6_layer_call_fn_1075245
)__inference_model_6_layer_call_fn_1074781À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zUtrace_0zVtrace_1zWtrace_2zXtrace_3
Æ
Ytrace_0
Ztrace_1
[trace_2
\trace_32Û
D__inference_model_6_layer_call_and_return_conditional_losses_1075272
D__inference_model_6_layer_call_and_return_conditional_losses_1075299
D__inference_model_6_layer_call_and_return_conditional_losses_1074801
D__inference_model_6_layer_call_and_return_conditional_losses_1074821À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zYtrace_0zZtrace_1z[trace_2z\trace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ú
btrace_0
ctrace_12£
.__inference_output_layer_layer_call_fn_1075305
.__inference_output_layer_layer_call_fn_1075311À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zbtrace_0zctrace_1

dtrace_0
etrace_12Ù
I__inference_output_layer_layer_call_and_return_conditional_losses_1075325
I__inference_output_layer_layer_call_and_return_conditional_losses_1075339À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zdtrace_0zetrace_1
+:)
2first_base_dense/kernel
$:"2first_base_dense/bias
,:*
2second_base_dense/kernel
%:#2second_base_dense/bias
+:)
2third_base_dense/kernel
$:"2third_base_dense/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
)__inference_model_7_layer_call_fn_1074882
left_inputright_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
)__inference_model_7_layer_call_fn_1075085inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
)__inference_model_7_layer_call_fn_1075103inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
)__inference_model_7_layer_call_fn_1074989
left_inputright_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¢B
D__inference_model_7_layer_call_and_return_conditional_losses_1075157inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¢B
D__inference_model_7_layer_call_and_return_conditional_losses_1075211inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
§B¤
D__inference_model_7_layer_call_and_return_conditional_losses_1075015
left_inputright_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
§B¤
D__inference_model_7_layer_call_and_return_conditional_losses_1075041
left_inputright_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÚB×
%__inference_signature_wrapper_1075067
left_inputright_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
ó
mtrace_02Ö
/__inference_flatten_input_layer_call_fn_1075344¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zmtrace_0

ntrace_02ñ
J__inference_flatten_input_layer_call_and_return_conditional_losses_1075350¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zntrace_0
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
ö
ttrace_02Ù
2__inference_first_base_dense_layer_call_fn_1075359¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zttrace_0

utrace_02ô
M__inference_first_base_dense_layer_call_and_return_conditional_losses_1075370¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zutrace_0
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
÷
{trace_02Ú
3__inference_second_base_dense_layer_call_fn_1075379¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z{trace_0

|trace_02õ
N__inference_second_base_dense_layer_call_and_return_conditional_losses_1075390¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z|trace_0
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
¯
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
ø
trace_02Ù
2__inference_third_base_dense_layer_call_fn_1075399¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02ô
M__inference_third_base_dense_layer_call_and_return_conditional_losses_1075410¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÿBü
)__inference_model_6_layer_call_fn_1074674
base_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ûBø
)__inference_model_6_layer_call_fn_1075228inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ûBø
)__inference_model_6_layer_call_fn_1075245inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÿBü
)__inference_model_6_layer_call_fn_1074781
base_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
D__inference_model_6_layer_call_and_return_conditional_losses_1075272inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
D__inference_model_6_layer_call_and_return_conditional_losses_1075299inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
D__inference_model_6_layer_call_and_return_conditional_losses_1074801
base_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
D__inference_model_6_layer_call_and_return_conditional_losses_1074821
base_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
B
.__inference_output_layer_layer_call_fn_1075305inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
.__inference_output_layer_layer_call_fn_1075311inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
§B¤
I__inference_output_layer_layer_call_and_return_conditional_losses_1075325inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
§B¤
I__inference_output_layer_layer_call_and_return_conditional_losses_1075339inputs/0inputs/1"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
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
ãBà
/__inference_flatten_input_layer_call_fn_1075344inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_flatten_input_layer_call_and_return_conditional_losses_1075350inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
æBã
2__inference_first_base_dense_layer_call_fn_1075359inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
M__inference_first_base_dense_layer_call_and_return_conditional_losses_1075370inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
çBä
3__inference_second_base_dense_layer_call_fn_1075379inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bÿ
N__inference_second_base_dense_layer_call_and_return_conditional_losses_1075390inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
æBã
2__inference_third_base_dense_layer_call_fn_1075399inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
M__inference_third_base_dense_layer_call_and_return_conditional_losses_1075410inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0:.
2Adam/first_base_dense/kernel/m
):'2Adam/first_base_dense/bias/m
1:/
2Adam/second_base_dense/kernel/m
*:(2Adam/second_base_dense/bias/m
0:.
2Adam/third_base_dense/kernel/m
):'2Adam/third_base_dense/bias/m
0:.
2Adam/first_base_dense/kernel/v
):'2Adam/first_base_dense/bias/v
1:/
2Adam/second_base_dense/kernel/v
*:(2Adam/second_base_dense/bias/v
0:.
2Adam/third_base_dense/kernel/v
):'2Adam/third_base_dense/bias/vß
"__inference__wrapped_model_1074592¸ !"#$q¢n
g¢d
b_
-*

left_inputÿÿÿÿÿÿÿÿÿ
.+
right_inputÿÿÿÿÿÿÿÿÿ
ª ";ª8
6
output_layer&#
output_layerÿÿÿÿÿÿÿÿÿ¯
M__inference_first_base_dense_layer_call_and_return_conditional_losses_1075370^ 0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_first_base_dense_layer_call_fn_1075359Q 0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ°
J__inference_flatten_input_layer_call_and_return_conditional_losses_1075350b8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_flatten_input_layer_call_fn_1075344U8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
D__inference_model_6_layer_call_and_return_conditional_losses_1074801v !"#$D¢A
:¢7
-*

base_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¾
D__inference_model_6_layer_call_and_return_conditional_losses_1074821v !"#$D¢A
:¢7
-*

base_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 º
D__inference_model_6_layer_call_and_return_conditional_losses_1075272r !"#$@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 º
D__inference_model_6_layer_call_and_return_conditional_losses_1075299r !"#$@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_model_6_layer_call_fn_1074674i !"#$D¢A
:¢7
-*

base_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_6_layer_call_fn_1074781i !"#$D¢A
:¢7
-*

base_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_6_layer_call_fn_1075228e !"#$@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_6_layer_call_fn_1075245e !"#$@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿó
D__inference_model_7_layer_call_and_return_conditional_losses_1075015ª !"#$y¢v
o¢l
b_
-*

left_inputÿÿÿÿÿÿÿÿÿ
.+
right_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ó
D__inference_model_7_layer_call_and_return_conditional_losses_1075041ª !"#$y¢v
o¢l
b_
-*

left_inputÿÿÿÿÿÿÿÿÿ
.+
right_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 î
D__inference_model_7_layer_call_and_return_conditional_losses_1075157¥ !"#$t¢q
j¢g
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 î
D__inference_model_7_layer_call_and_return_conditional_losses_1075211¥ !"#$t¢q
j¢g
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ë
)__inference_model_7_layer_call_fn_1074882 !"#$y¢v
o¢l
b_
-*

left_inputÿÿÿÿÿÿÿÿÿ
.+
right_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿË
)__inference_model_7_layer_call_fn_1074989 !"#$y¢v
o¢l
b_
-*

left_inputÿÿÿÿÿÿÿÿÿ
.+
right_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÆ
)__inference_model_7_layer_call_fn_1075085 !"#$t¢q
j¢g
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÆ
)__inference_model_7_layer_call_fn_1075103 !"#$t¢q
j¢g
]Z
+(
inputs/0ÿÿÿÿÿÿÿÿÿ
+(
inputs/1ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÛ
I__inference_output_layer_layer_call_and_return_conditional_losses_1075325d¢a
Z¢W
MJ
# 
inputs/0ÿÿÿÿÿÿÿÿÿ
# 
inputs/1ÿÿÿÿÿÿÿÿÿ

 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Û
I__inference_output_layer_layer_call_and_return_conditional_losses_1075339d¢a
Z¢W
MJ
# 
inputs/0ÿÿÿÿÿÿÿÿÿ
# 
inputs/1ÿÿÿÿÿÿÿÿÿ

 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ³
.__inference_output_layer_layer_call_fn_1075305d¢a
Z¢W
MJ
# 
inputs/0ÿÿÿÿÿÿÿÿÿ
# 
inputs/1ÿÿÿÿÿÿÿÿÿ

 
p 
ª "ÿÿÿÿÿÿÿÿÿ³
.__inference_output_layer_layer_call_fn_1075311d¢a
Z¢W
MJ
# 
inputs/0ÿÿÿÿÿÿÿÿÿ
# 
inputs/1ÿÿÿÿÿÿÿÿÿ

 
p
ª "ÿÿÿÿÿÿÿÿÿ°
N__inference_second_base_dense_layer_call_and_return_conditional_losses_1075390^!"0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
3__inference_second_base_dense_layer_call_fn_1075379Q!"0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿü
%__inference_signature_wrapper_1075067Ò !"#$¢
¢ 
ª|
;

left_input-*

left_inputÿÿÿÿÿÿÿÿÿ
=
right_input.+
right_inputÿÿÿÿÿÿÿÿÿ";ª8
6
output_layer&#
output_layerÿÿÿÿÿÿÿÿÿ¯
M__inference_third_base_dense_layer_call_and_return_conditional_losses_1075410^#$0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_third_base_dense_layer_call_fn_1075399Q#$0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ