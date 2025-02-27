�	4��@4��@!4��@	9-�V�#H@9-�V�#H@!9-�V�#H@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails64��@]�:�?1��(�kv@AO��Z}�?I���2�@Y��R�Lu@*	+���A2S
Iterator::Model::MapAndBatch#�Fqu@!��;��X@)#�Fqu@1��;��X@:Preprocessing2F
Iterator::Model���uu@!6���A�X@)עh[��?1��-/��?:Preprocessing2\
%Iterator::Model::MapAndBatch::Shuffle��5w��?!��|D��?)��5w��?1��|D��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
host�Your program is HIGHLY input-bound because 48.3% of the total step time sampled is waiting for input. Therefore, you should first focus on reducing the input time.no*no99-�V�#H@>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	]�:�?]�:�?!]�:�?      ��!       "	��(�kv@��(�kv@!��(�kv@*      ��!       2	O��Z}�?O��Z}�?!O��Z}�?:	���2�@���2�@!���2�@B      ��!       J	��R�Lu@��R�Lu@!��R�Lu@R      ��!       Z	��R�Lu@��R�Lu@!��R�Lu@JGPUY9-�V�#H@b �"e
;gradient_tape/pointnet/conv1d_4/conv1d/Conv2DBackpropFilterConv2DBackpropFilterP<�-�8�?!P<�-�8�?"4
pointnet/conv1d_4/conv1dConv2DS�}�p��?!��^�]�?"J
,gradient_tape/pointnet/activation_4/ReluGradReluGrad�a�uK��?!d��W�?" 
AddN_5AddNY��:Rϣ?!��m�+�?"c
:gradient_tape/pointnet/conv1d_4/conv1d/Conv2DBackpropInputConv2DBackpropInput�}�|@��?!:���;��?"L
1gradient_tape/pointnet/global_max_pooling1d/EqualEqual��-�Q�?!~	#�f�?"S
:gradient_tape/pointnet/batch_normalization_4/moments/mul_1MulFl�bL�?!�Y��i�?"6
pointnet/conv1d_4/BiasAddBiasAddi<˲�?!� ܐX�?"g
Jpointnet/conv1d_4/conv1d-0-1-TransposeNCHWToNHWC-LayoutOptimizer:TransposeUnknown3˕�?!PQލ�A�?"J
0gradient_tape/pointnet/global_max_pooling1d/CastCast@�S)T*�?!$�sВ�?Q      Y@YY}���(@aUpm��U@q��x��V�?y�A��N?"�
host�Your program is HIGHLY input-bound because 48.3% of the total step time sampled is waiting for input. Therefore, you should first focus on reducing the input time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
nono*�Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).:
Refer to the TF2 Profiler FAQ2"GPU(: B 