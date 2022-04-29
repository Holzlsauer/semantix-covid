#!/bin/bash
echo Setando vm.max_map_count para 262144
sysctl -w vm.max_map_count=262144
echo Subindo containers
docker-compose up -d
docker cp data/jars/elasticsearch-spark-20_2.11-7.9.2.jar jupyter-spark:/opt/spark/jars
docker cp data/jars/parquet-hadoop-bundle-1.6.0.jar jupyter-spark:/opt/spark/jars
echo Done!
