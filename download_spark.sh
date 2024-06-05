#!/bin/bash
# Download Spark if not present
if [ ! -d "/opt/spark" ]; then
    wget https://downloads.apache.org/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz
    tar -xvf spark-3.1.2-bin-hadoop3.2.tgz
    sudo mv spark-3.1.2-bin-hadoop3.2 /opt/spark
fi
