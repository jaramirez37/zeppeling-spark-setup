FROM gitpod/workspace-full

# Install Java
RUN sudo apt-get update && \
    sudo apt-get install -y openjdk-11-jdk && \
    sudo apt-get clean;

# Install Apache Zeppelin
RUN wget https://archive.apache.org/dist/zeppelin/zeppelin-0.9.0-bin-all.tgz && \
    tar -xvf zeppelin-0.9.0-bin-all.tgz && \
    sudo mv zeppelin-0.9.0-bin-all /opt/zeppelin && \
    sudo ln -s /opt/zeppelin/bin/zeppelin-daemon.sh /usr/local/bin/zeppelin-daemon.sh

# Install Apache Spark
RUN wget https://downloads.apache.org/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz && \
    tar -xvf spark-3.1.2-bin-hadoop3.2.tgz && \
    sudo mv spark-3.1.2-bin-hadoop3.2 /opt/spark && \
    sudo ln -s /opt/spark/bin/spark-shell /usr/local/bin/spark-shell

# Set environment variables
ENV SPARK_HOME=/opt/spark
ENV PATH=$SPARK_HOME/bin:$PATH
