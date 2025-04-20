#!/bin/bash

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-*.jar \
    -input /data \
    -output /tmp/index1 \
    -mapper "python3 mapper1.py" \
    -reducer "python3 reducer1.py" \
    -file mapreduce/mapper1.py \
    -file mapreduce/reducer1.py

echo "Input file is :"
echo $1


hdfs dfs -ls /
