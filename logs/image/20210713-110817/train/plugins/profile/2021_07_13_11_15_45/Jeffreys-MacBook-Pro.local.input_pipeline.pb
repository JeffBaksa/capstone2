	d??A5??@d??A5??@!d??A5??@	tA??u?tA??u?!tA??u?"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:d??A5??@      ??A?up????@Y1?Zd??rEagerKernelExecute 0*	     ??@2~
GIterator::Model::MaxIntraOpParallelism::Prefetch::FlatMap[0]::GeneratorV-???_@!?p???X@)V-???_@1?p???X@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::PrefetchT㥛? ??!*j?iu??)T㥛? ??1*j?iu??:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism+??????!?!f-ń??)???Q???1?:?>??:Preprocessing2F
Iterator::Modelsh??|???!?/ ??İ?){?G?zt?1?Ѵ?)p?:Preprocessing2p
9Iterator::Model::MaxIntraOpParallelism::Prefetch::FlatMapZd;ߧ_@!????X@)????Mbp?16C????i?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9sA??u?I???O??X@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	      ??      ??!      ??      ??!       "      ??!       *      ??!       2	?up????@?up????@!?up????@:      ??!       B      ??!       J	1?Zd??1?Zd??!1?Zd??R      ??!       Z	1?Zd??1?Zd??!1?Zd??b      ??!       JCPU_ONLYYsA??u?b q???O??X@