Хт
╦#Њ#
:
Add
x"T
y"T
z"T"
Ttype:
2	
Х
AsString

input"T

output"
Ttype:
	2	
"
	precisionint         "

scientificbool( "
shortestbool( "
widthint         "
fillstring 
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
ќ
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
=
Mul
x"T
y"T
z"T"
Ttype:
2	љ

NoOp
ї
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint         "	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
№
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Ї
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
D
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0ѕ
ђ
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0"
has_evbool( ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
и
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
Ѓ
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
ђ
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
s

VariableV2
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.8.0-PAI1905u12v1.8.0-PAI1905-6-gf161ec78╣Ю

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
k
global_step
VariableV2*
dtype0	*
shape: *
_class
loc:@global_step*
_output_shapes
: 
Ѕ
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_class
loc:@global_step*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
o
input_example_tensorPlaceholder*
dtype0*
shape:         *#
_output_shapes
:         
U
ParseExample/ConstConst*
dtype0*
valueB *
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
dtype0*
valueB *
_output_shapes
: 
z
'ParseExample/ParseExample/sparse_keys_0Const*
dtype0*#
valueB Blast_note_creators*
_output_shapes
: 
u
'ParseExample/ParseExample/sparse_keys_1Const*
dtype0*
valueB Blast_note_ids*
_output_shapes
: 
o
'ParseExample/ParseExample/sparse_keys_2Const*
dtype0*
valueB Bnote_id*
_output_shapes
: 
t
'ParseExample/ParseExample/sparse_keys_3Const*
dtype0*
valueB Bnote_open_id*
_output_shapes
: 
z
&ParseExample/ParseExample/dense_keys_0Const*
dtype0*$
valueB Bnote_video_duration*
_output_shapes
: 
Ь
ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names'ParseExample/ParseExample/sparse_keys_0'ParseExample/ParseExample/sparse_keys_1'ParseExample/ParseExample/sparse_keys_2'ParseExample/ParseExample/sparse_keys_3&ParseExample/ParseExample/dense_keys_0ParseExample/Const*
dense_shapes
:*╔
_output_shapesХ
│:         :         :         :         :         :         :         :         :::::         *
Ndense*
sparse_types
2		*
Tdense
2*
Nsparse
О
ginput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/lookupStringToHashBucketFastParseExample/ParseExample:4*#
_output_shapes
:         *
num_bucketsл
Ц
qinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
dtype0*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
valueB"л     *
_output_shapes
:
ў
pinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
dtype0*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
valueB
 *    *
_output_shapes
: 
џ
rinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
dtype0*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
valueB
 *ВЛ>*
_output_shapes
: 
Џ
{input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalqinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal/shape*
dtype0*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
T0*
_output_shapes
:	л
З
oinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal/mulMul{input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalrinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal/stddev*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
T0*
_output_shapes
:	л
Р
kinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normalAddoinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal/mulpinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal/mean*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
T0*
_output_shapes
:	л
Ѓ
Ninput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights
VariableV2*
dtype0*
shape:	л*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
_output_shapes
:	л
Е
Uinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/AssignAssignNinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weightskinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
T0*
_output_shapes
:	л
╝
Sinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/readIdentityNinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
T0*
_output_shapes
:	л
с
ўinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
Р
Ќinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
а
њinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SliceSliceParseExample/ParseExample:8ўinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice/beginЌinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
П
њinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
т
Љinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/ProdProdњinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Sliceњinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Const*
T0	*
_output_shapes
: 
Я
Юinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
П
џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
└
Ћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2GatherV2ParseExample/ParseExample:8Юinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2/indicesџinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2/axis*
Tparams0	*
Taxis0*
Tindices0*
_output_shapes
: 
Ш
Њinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Cast/xPackЉinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/ProdЋinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2*
N*
T0	*
_output_shapes
:
Е
џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseReshapeSparseReshapeParseExample/ParseExampleParseExample/ParseExample:8Њinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Cast/x*-
_output_shapes
:         :
К
Бinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseReshape/IdentityIdentityginput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/lookup*
T0	*#
_output_shapes
:         
я
Џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ю
Ўinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GreaterEqualGreaterEqualБinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseReshape/IdentityЏinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
р
њinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/WhereWhereЎinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GreaterEqual*'
_output_shapes
:         
Ь
џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
ђ
ћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/ReshapeReshapeњinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Whereџinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
▀
юinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
╠
Ќinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2_1GatherV2џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseReshapeћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshapeюinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2_1/axis*
Tparams0	*
Taxis0*
Tindices0	*'
_output_shapes
:         
▀
юinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Л
Ќinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2_2GatherV2Бinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseReshape/Identityћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshapeюinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2_2/axis*
Tparams0	*
Taxis0*
Tindices0	*#
_output_shapes
:         
Т
Ћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/IdentityIdentityюinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
ж
дinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
а
┤input_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsЌinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2_1Ќinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/GatherV2_2Ћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Identityдinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
і
Иinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
ї
║input_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
ї
║input_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ц
▓input_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice┤input_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsИinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack║input_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1║input_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*#
_output_shapes
:         *

begin_mask*
end_mask*
T0	*
shrink_axis_mask
ц
Еinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/CastCast▓input_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
г
Фinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/UniqueUniqueХinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
Я
║input_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
value	B : *
_output_shapes
: 
║
хinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Sinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/readФinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/Unique║input_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*
Taxis0*
Tindices0	*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*'
_output_shapes
:         
 
цinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparseSparseSegmentSumхinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/embedding_lookupГinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/Unique:1Еinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         
Ь
юinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
г
ќinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshape_1ReshapeХinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2юinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
У
њinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/ShapeShapeцinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
в
аinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
ь
бinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
ь
бinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
з
џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/strided_sliceStridedSliceњinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Shapeаinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/strided_slice/stackбinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/strided_slice/stack_1бinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
О
ћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
§
њinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/stackPackћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/stack/0џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/strided_slice*
N*
T0*
_output_shapes
:
Ѓ
Љinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/TileTileќinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshape_1њinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/stack*
T0
*0
_output_shapes
:                  
■
Ќinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/zeros_like	ZerosLikeцinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
ъ
їinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weightsSelectЉinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/TileЌinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/zeros_likeцinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
ь
Њinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Cast_1CastParseExample/ParseExample:8*

DstT0*

SrcT0	*
_output_shapes
:
т
џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
С
Ўinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ъ
ћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_1SliceЊinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Cast_1џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_1/beginЎinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
м
ћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Shape_1Shapeїinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights*
T0*
_output_shapes
:
т
џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
ь
Ўinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
а
ћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_2Sliceћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Shape_1џinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_2/beginЎinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
█
ўinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ќ
Њinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/concatConcatV2ћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_1ћinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Slice_2ўinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
щ
ќinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshape_2Reshapeїinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weightsЊinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/concat*
T0*'
_output_shapes
:         
Ѕ
Binput_layer/last_note_creators_note_open_id_shared_embedding/ShapeShapeќinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshape_2*
T0*
_output_shapes
:
џ
Pinput_layer/last_note_creators_note_open_id_shared_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
ю
Rinput_layer/last_note_creators_note_open_id_shared_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
ю
Rinput_layer/last_note_creators_note_open_id_shared_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
я
Jinput_layer/last_note_creators_note_open_id_shared_embedding/strided_sliceStridedSliceBinput_layer/last_note_creators_note_open_id_shared_embedding/ShapePinput_layer/last_note_creators_note_open_id_shared_embedding/strided_slice/stackRinput_layer/last_note_creators_note_open_id_shared_embedding/strided_slice/stack_1Rinput_layer/last_note_creators_note_open_id_shared_embedding/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
ј
Linput_layer/last_note_creators_note_open_id_shared_embedding/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
џ
Jinput_layer/last_note_creators_note_open_id_shared_embedding/Reshape/shapePackJinput_layer/last_note_creators_note_open_id_shared_embedding/strided_sliceLinput_layer/last_note_creators_note_open_id_shared_embedding/Reshape/shape/1*
N*
T0*
_output_shapes
:
Т
Dinput_layer/last_note_creators_note_open_id_shared_embedding/ReshapeReshapeќinput_layer/last_note_creators_note_open_id_shared_embedding/last_note_creators_shared_embedding/last_note_creators_shared_embedding_weights/Reshape_2Jinput_layer/last_note_creators_note_open_id_shared_embedding/Reshape/shape*
T0*'
_output_shapes
:         
▒
Zinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/AsStringAsStringParseExample/ParseExample:5*
T0	*#
_output_shapes
:         
ѕ
Xinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/lookupStringToHashBucketFastZinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/AsString*#
_output_shapes
:         *
num_bucketsаю
Љ
ginput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
dtype0*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
valueB" N  
   *
_output_shapes
:
ё
finput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
dtype0*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
valueB
 *    *
_output_shapes
: 
є
hinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
dtype0*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
valueB
 *ЏУА>*
_output_shapes
: 
■
qinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalginput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal/shape*
dtype0*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
T0* 
_output_shapes
:
аю

═
einput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal/mulMulqinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalhinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal/stddev*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
T0* 
_output_shapes
:
аю

╗
ainput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normalAddeinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal/mulfinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal/mean*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
T0* 
_output_shapes
:
аю

ы
Dinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights
VariableV2*
dtype0*
shape:
аю
*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights* 
_output_shapes
:
аю

ѓ
Kinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/AssignAssignDinput_layer/last_note_ids_note_id_shared_embedding/embedding_weightsainput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
T0* 
_output_shapes
:
аю

Ъ
Iinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/readIdentityDinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
T0* 
_output_shapes
:
аю

¤
ёinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
╬
Ѓinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
с
~input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SliceSliceParseExample/ParseExample:9ёinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice/beginЃinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
╚
~input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
д
}input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/ProdProd~input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice~input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Const*
T0	*
_output_shapes
: 
╠
Ѕinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
╔
єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ё
Ђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2GatherV2ParseExample/ParseExample:9Ѕinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2/indicesєinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2/axis*
Tparams0	*
Taxis0*
Tindices0*
_output_shapes
: 
И
input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Cast/xPack}input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/ProdЂinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2*
N*
T0	*
_output_shapes
:
ѓ
єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseReshapeSparseReshapeParseExample/ParseExample:1ParseExample/ParseExample:9input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Cast/x*-
_output_shapes
:         :
ц
Јinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseReshape/IdentityIdentityXinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/lookup*
T0	*#
_output_shapes
:         
╩
Єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Я
Ёinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GreaterEqualGreaterEqualЈinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseReshape/IdentityЄinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
И
~input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/WhereWhereЁinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GreaterEqual*'
_output_shapes
:         
┌
єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
├
ђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/ReshapeReshape~input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Whereєinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
╦
ѕinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ч
Ѓinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2_1GatherV2єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseReshapeђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshapeѕinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2_1/axis*
Tparams0	*
Taxis0*
Tindices0	*'
_output_shapes
:         
╦
ѕinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ђ
Ѓinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2_2GatherV2Јinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseReshape/Identityђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshapeѕinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2_2/axis*
Tparams0	*
Taxis0*
Tindices0	*#
_output_shapes
:         
Й
Ђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/IdentityIdentityѕinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
Н
њinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╝
аinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsЃinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2_1Ѓinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/GatherV2_2Ђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Identityњinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
Ш
цinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Э
дinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Э
дinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
└
ъinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceаinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsцinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stackдinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1дinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*#
_output_shapes
:         *

begin_mask*
end_mask*
T0	*
shrink_axis_mask
Ч
Ћinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/CastCastъinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
ё
Ќinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/UniqueUniqueбinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
┬
дinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
value	B : *
_output_shapes
: 
Ж
Аinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Iinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/readЌinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/Uniqueдinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*
Taxis0*
Tindices0	*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*'
_output_shapes
:         

»
љinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparseSparseSegmentSumАinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/embedding_lookupЎinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/Unique:1Ћinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         

┌
ѕinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
­
ѓinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshape_1Reshapeбinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2ѕinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
┐
~input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/ShapeShapeљinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
О
їinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
┘
јinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
┘
јinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ј
єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/strided_sliceStridedSlice~input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Shapeїinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/strided_slice/stackјinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/strided_slice/stack_1јinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
├
ђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
└
~input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/stackPackђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/stack/0єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/strided_slice*
N*
T0*
_output_shapes
:
┼
}input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/TileTileѓinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshape_1~input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/stack*
T0
*0
_output_shapes
:                  
о
Ѓinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/zeros_like	ZerosLikeљinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         

╠
xinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weightsSelect}input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/TileЃinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/zeros_likeљinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         

п
input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Cast_1CastParseExample/ParseExample:9*

DstT0*

SrcT0	*
_output_shapes
:
Л
єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
л
Ёinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╬
ђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_1Sliceinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Cast_1єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_1/beginЁinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Е
ђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Shape_1Shapexinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights*
T0*
_output_shapes
:
Л
єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
┘
Ёinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
л
ђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_2Sliceђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Shape_1єinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_2/beginЁinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
К
ёinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
к
input_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/concatConcatV2ђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_1ђinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Slice_2ёinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/concat/axis*
_output_shapes
:*
T0*
N
╗
ѓinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshape_2Reshapexinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weightsinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/concat*
T0*'
_output_shapes
:         

в
8input_layer/last_note_ids_note_id_shared_embedding/ShapeShapeѓinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshape_2*
T0*
_output_shapes
:
љ
Finput_layer/last_note_ids_note_id_shared_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
њ
Hinput_layer/last_note_ids_note_id_shared_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
њ
Hinput_layer/last_note_ids_note_id_shared_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
г
@input_layer/last_note_ids_note_id_shared_embedding/strided_sliceStridedSlice8input_layer/last_note_ids_note_id_shared_embedding/ShapeFinput_layer/last_note_ids_note_id_shared_embedding/strided_slice/stackHinput_layer/last_note_ids_note_id_shared_embedding/strided_slice/stack_1Hinput_layer/last_note_ids_note_id_shared_embedding/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
ё
Binput_layer/last_note_ids_note_id_shared_embedding/Reshape/shape/1Const*
dtype0*
value	B :
*
_output_shapes
: 
Ч
@input_layer/last_note_ids_note_id_shared_embedding/Reshape/shapePack@input_layer/last_note_ids_note_id_shared_embedding/strided_sliceBinput_layer/last_note_ids_note_id_shared_embedding/Reshape/shape/1*
N*
T0*
_output_shapes
:
Й
:input_layer/last_note_ids_note_id_shared_embedding/ReshapeReshapeѓinput_layer/last_note_ids_note_id_shared_embedding/last_note_ids_shared_embedding/last_note_ids_shared_embedding_weights/Reshape_2@input_layer/last_note_ids_note_id_shared_embedding/Reshape/shape*
T0*'
_output_shapes
:         

Г
Vinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/AsStringAsStringParseExample/ParseExample:6*
T0	*#
_output_shapes
:         
ђ
Tinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/lookupStringToHashBucketFastVinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/AsString*#
_output_shapes
:         *
num_bucketsаю
─
zinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
├
yinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
─
tinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SliceSliceParseExample/ParseExample:10zinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice/beginyinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
Й
tinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ѕ
sinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/ProdProdtinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slicetinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Const*
T0	*
_output_shapes
: 
┴
input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
Й
|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
С
winput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2GatherV2ParseExample/ParseExample:10input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2/indices|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2/axis*
Tparams0	*
Taxis0*
Tindices0*
_output_shapes
: 
Ў
uinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Cast/xPacksinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Prodwinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2*
N*
T0	*
_output_shapes
:
Ь
|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseReshapeSparseReshapeParseExample/ParseExample:2ParseExample/ParseExample:10uinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Cast/x*-
_output_shapes
:         :
ќ
Ёinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseReshape/IdentityIdentityTinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/lookup*
T0	*#
_output_shapes
:         
┐
}input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
└
{input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GreaterEqualGreaterEqualЁinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseReshape/Identity}input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
Б
tinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/WhereWhere{input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GreaterEqual*'
_output_shapes
:         
¤
|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Б
vinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/ReshapeReshapetinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Where|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
└
~input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
л
yinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2_1GatherV2|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseReshapevinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape~input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2_1/axis*
Tparams0	*
Taxis0*
Tindices0	*'
_output_shapes
:         
└
~input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
о
yinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2_2GatherV2Ёinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseReshape/Identityvinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape~input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2_2/axis*
Tparams0	*
Taxis0*
Tindices0	*#
_output_shapes
:         
е
winput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/IdentityIdentity~input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
╦
ѕinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Є
ќinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsyinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2_1yinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/GatherV2_2winput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Identityѕinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
В
џinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ь
юinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ь
юinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ј
ћinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceќinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsџinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stackюinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1юinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*#
_output_shapes
:         *

begin_mask*
end_mask*
T0	*
shrink_axis_mask
У
Іinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/CastCastћinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
­
Їinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/UniqueUniqueўinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
И
юinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
value	B : *
_output_shapes
: 
╠
Ќinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Iinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/readЇinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/Uniqueюinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*
Taxis0*
Tindices0	*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*'
_output_shapes
:         

Є
єinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparseSparseSegmentSumЌinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/embedding_lookupЈinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/Unique:1Іinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         

¤
~input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
л
xinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape_1Reshapeўinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2~input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
Ф
tinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/ShapeShapeєinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
═
ѓinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
¤
ёinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
¤
ёinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
█
|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/strided_sliceStridedSlicetinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Shapeѓinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/strided_slice/stackёinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/strided_slice/stack_1ёinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
И
vinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
а
tinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/stackPackvinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/stack/0|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/strided_slice*
N*
T0*
_output_shapes
:
д
sinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/TileTilexinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape_1tinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/stack*
T0
*0
_output_shapes
:                  
┴
yinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/zeros_like	ZerosLikeєinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         

Б
ninput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weightsSelectsinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Tileyinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/zeros_likeєinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         

¤
uinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Cast_1CastParseExample/ParseExample:10*

DstT0*

SrcT0	*
_output_shapes
:
к
|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
┼
{input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Б
vinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_1Sliceuinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Cast_1|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_1/begin{input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
ћ
vinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Shape_1Shapeninput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights*
T0*
_output_shapes
:
к
|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
╬
{input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
ц
vinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_2Slicevinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Shape_1|input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_2/begin{input_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
╝
zinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Џ
uinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/concatConcatV2vinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_1vinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Slice_2zinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
ю
xinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape_2Reshapeninput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weightsuinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/concat*
T0*'
_output_shapes
:         

Р
:input_layer/last_note_ids_note_id_shared_embedding_1/ShapeShapexinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape_2*
T0*
_output_shapes
:
њ
Hinput_layer/last_note_ids_note_id_shared_embedding_1/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
ћ
Jinput_layer/last_note_ids_note_id_shared_embedding_1/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
ћ
Jinput_layer/last_note_ids_note_id_shared_embedding_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Х
Binput_layer/last_note_ids_note_id_shared_embedding_1/strided_sliceStridedSlice:input_layer/last_note_ids_note_id_shared_embedding_1/ShapeHinput_layer/last_note_ids_note_id_shared_embedding_1/strided_slice/stackJinput_layer/last_note_ids_note_id_shared_embedding_1/strided_slice/stack_1Jinput_layer/last_note_ids_note_id_shared_embedding_1/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
є
Dinput_layer/last_note_ids_note_id_shared_embedding_1/Reshape/shape/1Const*
dtype0*
value	B :
*
_output_shapes
: 
ѓ
Binput_layer/last_note_ids_note_id_shared_embedding_1/Reshape/shapePackBinput_layer/last_note_ids_note_id_shared_embedding_1/strided_sliceDinput_layer/last_note_ids_note_id_shared_embedding_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
и
<input_layer/last_note_ids_note_id_shared_embedding_1/ReshapeReshapexinput_layer/last_note_ids_note_id_shared_embedding_1/note_id_shared_embedding/note_id_shared_embedding_weights/Reshape_2Binput_layer/last_note_ids_note_id_shared_embedding_1/Reshape/shape*
T0*'
_output_shapes
:         

М
cinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/lookupStringToHashBucketFastParseExample/ParseExample:7*#
_output_shapes
:         *
num_bucketsл
┘
јinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
п
Їinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ѓ
ѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SliceSliceParseExample/ParseExample:11јinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice/beginЇinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
М
ѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
К
Єinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/ProdProdѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Sliceѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Const*
T0	*
_output_shapes
: 
о
Њinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
М
љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Б
Іinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2GatherV2ParseExample/ParseExample:11Њinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2/indicesљinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2/axis*
Tparams0	*
Taxis0*
Tindices0*
_output_shapes
: 
п
Ѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Cast/xPackЄinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/ProdІinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2*
N*
T0	*
_output_shapes
:
ў
љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseReshapeSparseReshapeParseExample/ParseExample:3ParseExample/ParseExample:11Ѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Cast/x*-
_output_shapes
:         :
╣
Ўinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseReshape/IdentityIdentitycinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/lookup*
T0	*#
_output_shapes
:         
н
Љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
■
Јinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GreaterEqualGreaterEqualЎinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseReshape/IdentityЉinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
═
ѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/WhereWhereЈinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GreaterEqual*'
_output_shapes
:         
С
љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Р
іinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/ReshapeReshapeѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Whereљinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:         
Н
њinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ц
Їinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2_1GatherV2љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseReshapeіinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshapeњinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2_1/axis*
Tparams0	*
Taxis0*
Tindices0	*'
_output_shapes
:         
Н
њinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Е
Їinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2_2GatherV2Ўinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseReshape/Identityіinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshapeњinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2_2/axis*
Tparams0	*
Taxis0*
Tindices0	*#
_output_shapes
:         
м
Іinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/IdentityIdentityњinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
▀
юinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ь
фinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsЇinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2_1Їinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/GatherV2_2Іinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Identityюinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
ђ
«input_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
ѓ
░input_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
ѓ
░input_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ы
еinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceфinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows«input_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack░input_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1░input_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*#
_output_shapes
:         *

begin_mask*
end_mask*
T0	*
shrink_axis_mask
љ
Ъinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/CastCastеinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
ў
Аinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/UniqueUniqueгinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:         :         
о
░input_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
value	B : *
_output_shapes
: 
ю
Фinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Sinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/readАinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/Unique░input_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*
Taxis0*
Tindices0	*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*'
_output_shapes
:         
О
џinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparseSparseSegmentSumФinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/embedding_lookupБinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/Unique:1Ъinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:         
С
њinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
ј
їinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshape_1Reshapeгinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2њinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:         
н
ѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/ShapeShapeџinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
р
ќinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
с
ўinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
с
ўinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
┴
љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/strided_sliceStridedSliceѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Shapeќinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/strided_slice/stackўinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/strided_slice/stack_1ўinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
═
іinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
▀
ѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/stackPackіinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/stack/0љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/strided_slice*
N*
T0*
_output_shapes
:
т
Єinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/TileTileїinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshape_1ѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/stack*
T0
*0
_output_shapes
:                  
Ж
Їinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/zeros_like	ZerosLikeџinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Ш
ѓinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weightsSelectЄinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/TileЇinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/zeros_likeџinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
С
Ѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Cast_1CastParseExample/ParseExample:11*

DstT0*

SrcT0	*
_output_shapes
:
█
љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
┌
Јinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
э
іinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_1SliceЅinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Cast_1љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_1/beginЈinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Й
іinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Shape_1Shapeѓinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights*
T0*
_output_shapes
:
█
љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
с
Јinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
Э
іinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_2Sliceіinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Shape_1љinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_2/beginЈinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
Л
јinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
№
Ѕinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/concatConcatV2іinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_1іinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Slice_2јinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
█
їinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshape_2Reshapeѓinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weightsЅinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/concat*
T0*'
_output_shapes
:         
Ђ
Dinput_layer/last_note_creators_note_open_id_shared_embedding_1/ShapeShapeїinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshape_2*
T0*
_output_shapes
:
ю
Rinput_layer/last_note_creators_note_open_id_shared_embedding_1/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
ъ
Tinput_layer/last_note_creators_note_open_id_shared_embedding_1/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
ъ
Tinput_layer/last_note_creators_note_open_id_shared_embedding_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
У
Linput_layer/last_note_creators_note_open_id_shared_embedding_1/strided_sliceStridedSliceDinput_layer/last_note_creators_note_open_id_shared_embedding_1/ShapeRinput_layer/last_note_creators_note_open_id_shared_embedding_1/strided_slice/stackTinput_layer/last_note_creators_note_open_id_shared_embedding_1/strided_slice/stack_1Tinput_layer/last_note_creators_note_open_id_shared_embedding_1/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
љ
Ninput_layer/last_note_creators_note_open_id_shared_embedding_1/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
а
Linput_layer/last_note_creators_note_open_id_shared_embedding_1/Reshape/shapePackLinput_layer/last_note_creators_note_open_id_shared_embedding_1/strided_sliceNinput_layer/last_note_creators_note_open_id_shared_embedding_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
Я
Finput_layer/last_note_creators_note_open_id_shared_embedding_1/ReshapeReshapeїinput_layer/last_note_creators_note_open_id_shared_embedding_1/note_open_id_shared_embedding/note_open_id_shared_embedding_weights/Reshape_2Linput_layer/last_note_creators_note_open_id_shared_embedding_1/Reshape/shape*
T0*'
_output_shapes
:         
х
4input_layer/note_video_duration_bucketized/Bucketize	BucketizeParseExample/ParseExample:12*"

boundaries
"  а@   A  ­A  pB*
T0*'
_output_shapes
:         
▒
2input_layer/note_video_duration_bucketized/ToInt64Cast4input_layer/note_video_duration_bucketized/Bucketize*

DstT0	*

SrcT0*'
_output_shapes
:         
}
8input_layer/note_video_duration_bucketized/one_hot/ConstConst*
dtype0*
valueB
 *  ђ?*
_output_shapes
: 

:input_layer/note_video_duration_bucketized/one_hot/Const_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 
z
8input_layer/note_video_duration_bucketized/one_hot/depthConst*
dtype0*
value	B :*
_output_shapes
: 
ђ
;input_layer/note_video_duration_bucketized/one_hot/on_valueConst*
dtype0*
valueB
 *  ђ?*
_output_shapes
: 
Ђ
<input_layer/note_video_duration_bucketized/one_hot/off_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
█
2input_layer/note_video_duration_bucketized/one_hotOneHot2input_layer/note_video_duration_bucketized/ToInt648input_layer/note_video_duration_bucketized/one_hot/depth;input_layer/note_video_duration_bucketized/one_hot/on_value<input_layer/note_video_duration_bucketized/one_hot/off_value*
T0*+
_output_shapes
:         
њ
0input_layer/note_video_duration_bucketized/ShapeShape2input_layer/note_video_duration_bucketized/one_hot*
T0*
_output_shapes
:
ѕ
>input_layer/note_video_duration_bucketized/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
і
@input_layer/note_video_duration_bucketized/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
і
@input_layer/note_video_duration_bucketized/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ё
8input_layer/note_video_duration_bucketized/strided_sliceStridedSlice0input_layer/note_video_duration_bucketized/Shape>input_layer/note_video_duration_bucketized/strided_slice/stack@input_layer/note_video_duration_bucketized/strided_slice/stack_1@input_layer/note_video_duration_bucketized/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
|
:input_layer/note_video_duration_bucketized/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
С
8input_layer/note_video_duration_bucketized/Reshape/shapePack8input_layer/note_video_duration_bucketized/strided_slice:input_layer/note_video_duration_bucketized/Reshape/shape/1*
N*
T0*
_output_shapes
:
П
2input_layer/note_video_duration_bucketized/ReshapeReshape2input_layer/note_video_duration_bucketized/one_hot8input_layer/note_video_duration_bucketized/Reshape/shape*
T0*'
_output_shapes
:         
Y
input_layer/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
«
input_layer/concatConcatV2Dinput_layer/last_note_creators_note_open_id_shared_embedding/Reshape:input_layer/last_note_ids_note_id_shared_embedding/Reshape<input_layer/last_note_ids_note_id_shared_embedding_1/ReshapeFinput_layer/last_note_creators_note_open_id_shared_embedding_1/Reshape2input_layer/note_video_duration_bucketized/Reshapeinput_layer/concat/axis*'
_output_shapes
:         %*
T0*
N
Ъ
-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_class
loc:@dense/kernel*
valueB"%   ђ   *
_output_shapes
:
Љ
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *ТDCЙ*
_output_shapes
: 
Љ
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *ТDC>*
_output_shapes
: 
═
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	%ђ
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
р
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	%ђ
М
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	%ђ

dense/kernel
VariableV2*
dtype0*
shape:	%ђ*
_class
loc:@dense/kernel*
_output_shapes
:	%ђ
Ъ
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	%ђ
v
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	%ђ
і
dense/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense/bias*
valueBђ*    *
_output_shapes	
:ђ
s

dense/bias
VariableV2*
dtype0*
shape:ђ*
_class
loc:@dense/bias*
_output_shapes	
:ђ
і
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
T0*
_output_shapes	
:ђ
l
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes	
:ђ
p
dense/MatMulMatMulinput_layer/concatdense/kernel/read*
T0*(
_output_shapes
:         ђ
j
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*(
_output_shapes
:         ђ
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         ђ
[
dropout/IdentityIdentity
dense/Relu*
T0*(
_output_shapes
:         ђ
Б
/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB"ђ   @   *
_output_shapes
:
Ћ
-dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *з5Й*
_output_shapes
: 
Ћ
-dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *з5>*
_output_shapes
: 
М
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	ђ@
о
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
: 
ж
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	ђ@
█
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	ђ@
Ѓ
dense_1/kernel
VariableV2*
dtype0*
shape:	ђ@*!
_class
loc:@dense_1/kernel*
_output_shapes
:	ђ@
Д
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	ђ@
|
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	ђ@
ї
dense_1/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_1/bias*
valueB@*    *
_output_shapes
:@
u
dense_1/bias
VariableV2*
dtype0*
shape:@*
_class
loc:@dense_1/bias*
_output_shapes
:@
Љ
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
T0*
_output_shapes
:@
q
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes
:@
q
dense_1/MatMulMatMuldropout/Identitydense_1/kernel/read*
T0*'
_output_shapes
:         @
o
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*'
_output_shapes
:         @
W
dense_1/ReluReludense_1/BiasAdd*
T0*'
_output_shapes
:         @
^
dropout_1/IdentityIdentitydense_1/Relu*
T0*'
_output_shapes
:         @
Б
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB"@   @   *
_output_shapes
:
Ћ
-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *О│]Й*
_output_shapes
: 
Ћ
-dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_2/kernel*
valueB
 *О│]>*
_output_shapes
: 
м
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

:@@
о
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
: 
У
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

:@@
┌
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

:@@
Ђ
dense_2/kernel
VariableV2*
dtype0*
shape
:@@*!
_class
loc:@dense_2/kernel*
_output_shapes

:@@
д
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

:@@
{
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

:@@
ї
dense_2/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_2/bias*
valueB@*    *
_output_shapes
:@
u
dense_2/bias
VariableV2*
dtype0*
shape:@*
_class
loc:@dense_2/bias*
_output_shapes
:@
Љ
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:@
q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:@
s
dense_2/MatMulMatMuldropout_1/Identitydense_2/kernel/read*
T0*'
_output_shapes
:         @
o
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*'
_output_shapes
:         @
W
dense_2/ReluReludense_2/BiasAdd*
T0*'
_output_shapes
:         @
^
dropout_2/IdentityIdentitydense_2/Relu*
T0*'
_output_shapes
:         @
Б
/dense_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB"@      *
_output_shapes
:
Ћ
-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *ѕјЏЙ*
_output_shapes
: 
Ћ
-dense_3/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *ѕјЏ>*
_output_shapes
: 
м
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
dtype0*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes

:@
о
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes
: 
У
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes

:@
┌
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes

:@
Ђ
dense_3/kernel
VariableV2*
dtype0*
shape
:@*!
_class
loc:@dense_3/kernel*
_output_shapes

:@
д
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes

:@
{
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes

:@
ї
dense_3/bias/Initializer/zerosConst*
dtype0*
_class
loc:@dense_3/bias*
valueB*    *
_output_shapes
:
u
dense_3/bias
VariableV2*
dtype0*
shape:*
_class
loc:@dense_3/bias*
_output_shapes
:
Љ
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
_class
loc:@dense_3/bias*
T0*
_output_shapes
:
q
dense_3/bias/readIdentitydense_3/bias*
_class
loc:@dense_3/bias*
T0*
_output_shapes
:
s
dense_3/MatMulMatMuldropout_2/Identitydense_3/kernel/read*
T0*'
_output_shapes
:         
o
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*'
_output_shapes
:         
U
SigmoidSigmoiddense_3/BiasAdd*
T0*'
_output_shapes
:         
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
R
save/Const_1Const*
dtype0*
valueB Bmodel*
_output_shapes
: 
ё
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_fed7092174104b1680fe52aacaff5ea7/part*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
ї
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
ѕ
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*г
valueбBЪB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBglobal_stepBNinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weightsBDinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
_output_shapes
:
ѕ
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*)
value BB B B B B B B B B B B *
_output_shapes
:
ц
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kernelglobal_stepNinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weightsDinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights"/device:CPU:0*
dtypes
2	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
а
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Ѕ
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
n
save/RestoreV2/tensor_namesConst*
dtype0*
valueBB
dense/bias*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
љ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
v
save/AssignAssign
dense/biassave/RestoreV2*
_class
loc:@dense/bias*
T0*
_output_shapes	
:ђ
r
save/RestoreV2_1/tensor_namesConst*
dtype0*!
valueBBdense/kernel*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ѓ
save/Assign_1Assigndense/kernelsave/RestoreV2_1*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	%ђ
r
save/RestoreV2_2/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
}
save/Assign_2Assigndense_1/biassave/RestoreV2_2*
_class
loc:@dense_1/bias*
T0*
_output_shapes
:@
t
save/RestoreV2_3/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
є
save/Assign_3Assigndense_1/kernelsave/RestoreV2_3*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	ђ@
r
save/RestoreV2_4/tensor_namesConst*
dtype0*!
valueBBdense_2/bias*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
}
save/Assign_4Assigndense_2/biassave/RestoreV2_4*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:@
t
save/RestoreV2_5/tensor_namesConst*
dtype0*#
valueBBdense_2/kernel*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
Ё
save/Assign_5Assigndense_2/kernelsave/RestoreV2_5*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

:@@
r
save/RestoreV2_6/tensor_namesConst*
dtype0*!
valueBBdense_3/bias*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
}
save/Assign_6Assigndense_3/biassave/RestoreV2_6*
_class
loc:@dense_3/bias*
T0*
_output_shapes
:
t
save/RestoreV2_7/tensor_namesConst*
dtype0*#
valueBBdense_3/kernel*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
Ё
save/Assign_7Assigndense_3/kernelsave/RestoreV2_7*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes

:@
q
save/RestoreV2_8/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2	*
_output_shapes
:
w
save/Assign_8Assignglobal_stepsave/RestoreV2_8*
_class
loc:@global_step*
T0	*
_output_shapes
: 
┤
save/RestoreV2_9/tensor_namesConst*
dtype0*c
valueZBXBNinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ќ
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
є
save/Assign_9AssignNinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weightssave/RestoreV2_9*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
T0*
_output_shapes
:	л
Ф
save/RestoreV2_10/tensor_namesConst*
dtype0*Y
valuePBNBDinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ў
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
ш
save/Assign_10AssignDinput_layer/last_note_ids_note_id_shared_embedding/embedding_weightssave/RestoreV2_10*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
T0* 
_output_shapes
:
аю

╔
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
T
save_1/Const_1Const*
dtype0*
valueB Bmodel*
_output_shapes
: 
є
save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_74e2f737fa8e49ac85487be50d4400bd/part*
_output_shapes
: 
j
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
ћ
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
і
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*г
valueбBЪB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBglobal_stepBNinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weightsBDinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
_output_shapes
:
і
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*)
value BB B B B B B B B B B B *
_output_shapes
:
г
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kernelglobal_stepNinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weightsDinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights"/device:CPU:0*
dtypes
2	
е
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
д
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
{
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0
Љ
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
p
save_1/RestoreV2/tensor_namesConst*
dtype0*
valueBB
dense/bias*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ў
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
z
save_1/AssignAssign
dense/biassave_1/RestoreV2*
_class
loc:@dense/bias*
T0*
_output_shapes	
:ђ
t
save_1/RestoreV2_1/tensor_namesConst*
dtype0*!
valueBBdense/kernel*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ъ
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
є
save_1/Assign_1Assigndense/kernelsave_1/RestoreV2_1*
_class
loc:@dense/kernel*
T0*
_output_shapes
:	%ђ
t
save_1/RestoreV2_2/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ъ
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ђ
save_1/Assign_2Assigndense_1/biassave_1/RestoreV2_2*
_class
loc:@dense_1/bias*
T0*
_output_shapes
:@
v
save_1/RestoreV2_3/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ъ
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
і
save_1/Assign_3Assigndense_1/kernelsave_1/RestoreV2_3*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	ђ@
t
save_1/RestoreV2_4/tensor_namesConst*
dtype0*!
valueBBdense_2/bias*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ъ
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Ђ
save_1/Assign_4Assigndense_2/biassave_1/RestoreV2_4*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:@
v
save_1/RestoreV2_5/tensor_namesConst*
dtype0*#
valueBBdense_2/kernel*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ъ
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
Ѕ
save_1/Assign_5Assigndense_2/kernelsave_1/RestoreV2_5*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

:@@
t
save_1/RestoreV2_6/tensor_namesConst*
dtype0*!
valueBBdense_3/bias*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ъ
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Ђ
save_1/Assign_6Assigndense_3/biassave_1/RestoreV2_6*
_class
loc:@dense_3/bias*
T0*
_output_shapes
:
v
save_1/RestoreV2_7/tensor_namesConst*
dtype0*#
valueBBdense_3/kernel*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ъ
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
Ѕ
save_1/Assign_7Assigndense_3/kernelsave_1/RestoreV2_7*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes

:@
s
save_1/RestoreV2_8/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ъ
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2	*
_output_shapes
:
{
save_1/Assign_8Assignglobal_stepsave_1/RestoreV2_8*
_class
loc:@global_step*
T0	*
_output_shapes
: 
Х
save_1/RestoreV2_9/tensor_namesConst*
dtype0*c
valueZBXBNinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
ъ
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
і
save_1/Assign_9AssignNinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weightssave_1/RestoreV2_9*a
_classW
USloc:@input_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights*
T0*
_output_shapes
:	л
Г
 save_1/RestoreV2_10/tensor_namesConst*
dtype0*Y
valuePBNBDinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
А
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
щ
save_1/Assign_10AssignDinput_layer/last_note_ids_note_id_shared_embedding/embedding_weightssave_1/RestoreV2_10*W
_classM
KIloc:@input_layer/last_note_ids_note_id_shared_embedding/embedding_weights*
T0* 
_output_shapes
:
аю

р
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard"U
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8фsave_1/Const_1:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"ч
trainable_variablesсЯ
№
Pinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights:0Uinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/AssignUinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/read:02minput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal:0
К
Finput_layer/last_note_ids_note_id_shared_embedding/embedding_weights:0Kinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/AssignKinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/read:02cinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
m
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:0
\
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:0
m
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:0
\
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:0"╦
	variablesй║
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
№
Pinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights:0Uinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/AssignUinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/read:02minput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal:0
К
Finput_layer/last_note_ids_note_id_shared_embedding/embedding_weights:0Kinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/AssignKinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/read:02cinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
m
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:0
\
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:0
m
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:0
\
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:0"ѕ
0last_note_creators_note_open_id_shared_embeddingT
R
Pinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights:0" 
legacy_init_op


group_deps"t
&last_note_ids_note_id_shared_embeddingJ
H
Finput_layer/last_note_ids_note_id_shared_embedding/embedding_weights:0"М
model_variables┐╝
№
Pinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights:0Uinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/AssignUinput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/read:02minput_layer/last_note_creators_note_open_id_shared_embedding/embedding_weights/Initializer/truncated_normal:0
К
Finput_layer/last_note_ids_note_id_shared_embedding/embedding_weights:0Kinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/AssignKinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/read:02cinput_layer/last_note_ids_note_id_shared_embedding/embedding_weights/Initializer/truncated_normal:0*і
predict
5
examples)
input_example_tensor:0         *
output 
	Sigmoid:0         tensorflow/serving/predict*њ
serving_default
5
examples)
input_example_tensor:0         *
output 
	Sigmoid:0         tensorflow/serving/predict