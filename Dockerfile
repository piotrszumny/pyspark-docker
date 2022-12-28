FROM apache/spark-py

USER root
RUN ln -s /opt/spark/bin/pyspark /usr/local/bin/pyspark
RUN pip install ipython pytest
RUN echo 'alias pyspark="PYSPARK_DRIVER_PYTHON=ipython pyspark"' >> ~/.bashrc
