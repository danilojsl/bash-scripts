Repository for bash scripts for testing spark-nlp

To run on spark-shell:

```
sh sparknlp-shell.sh /my/path/lib/sparknlp.jar /my/path/pretrained_cache /my/path/storage
```

To run in pyspark-shell:
```
sh pysparknlp-shell.sh /my/path/lib/sparknlp.jar /my/path/pretrained_cache /my/path/storage
```

Copy a local file to Databricks
```
sh copy_to_dbfs.sh /home/danilo/IdeaProjects/JSL/spark-nlp/tmp_distilbert_base_pt/ dbfs:/danilo_tmp/models/tmp_distilbert_base_pt
```