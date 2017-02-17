alias ..='cd ..'
#java
export JAVA_HOME=/opt/jdk
export JRE_HOME=/opt/jdk/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${PATH}:${JAVA_HOME}/bin

#hadoop
export HADOOP_HOME=/opt/hadoop
export PATH=${PATH}:${HADOOP_HOME}/bin

#scala
export SCALA_HOME=/opt/scala
export PATH=$PATH:$SCALA_HOME/bin

#spark
export SPARK_HOME=/opt/spark
export PATH=$PATH:$SPARK_HOME/bin

#maven
export MVN_HOME=/opt/maven
export PATH=$PATH:$MVN_HOME/bin

#sbt
export SBT_HOME=/opt/sbt
export PATH=$PATH:$SBT_HOME/bin

