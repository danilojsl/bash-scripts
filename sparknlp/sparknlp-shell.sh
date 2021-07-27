#!/bin/bash
# This script works for spark-nlp 3.2.0 and above
echo Starting Spark with SparkNLP...

SPARK_NLP_JAR_PATH=$1
PRETRAINED_CACHE_PATH=$2
STORAGE_PATH=$3

echo "Using SparkNLP jar from $SPARK_NLP_JAR_PATH"

spark-shell \
  --driver-memory 16g \
  --conf spark.kryoserializer.buffer.max=2000M \
  --conf spark.jsl.settings.pretrained.cache_folder="$PRETRAINED_CACHE_PATH" \
  --conf spark.jsl.settings.storage.cluster_tmp_dir="$STORAGE_PATH" \
  --jars "$SPARK_NLP_JAR_PATH"
