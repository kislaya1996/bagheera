# Set Hadoop-specific environment variables here.

# The only required environment variable is JAVA_HOME.  All others are
# optional.  When running a distributed configuration it is best to
# set JAVA_HOME in this file, so that it is correctly defined on
# remote nodes.

# The java implementation to use.  Required.
# export JAVA_HOME=/usr/lib/j2sdk1.5-sun
export JAVA_HOME=/usr/java/latest

export HBASE_HOME=/usr/lib/hbase

# Extra Java CLASSPATH elements.  Optional.
export HADOOP_CLASSPATH=$HADOOP_CLASSPATH:$HBASE_HOME/hbase-0.90.1-cdh3u0.jar:$HBASE_HOME/conf:$HBASE_HOME/lib/zookeeper.jar:$HBASE_HOME/lib/guava-r06.jar;

# The maximum amount of heap to use, in MB. Default is 1000.
# export HADOOP_HEAPSIZE=2000

# Extra Java runtime options.  Empty by default.
export HADOOP_OPTS="-Djava.net.preferIPv4Stack=true -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false"

# Command specific options appended to HADOOP_OPTS when specified
export HADOOP_NAMENODE_OPTS="-Xmx2000m -XX:+UseCompressedOops -Dcom.sun.management.jmxremote $HADOOP_NAMENODE_OPTS -Dcom.sun.management.jmxremote.port=8004"
export HADOOP_SECONDARYNAMENODE_OPTS="-Xmx2000m -XX:+UseCompressedOops -Dcom.sun.management.jmxremote $HADOOP_SECONDARYNAMENODE_OPTS -Dcom.sun.management.jmxremote.port=8005"
export HADOOP_DATANODE_OPTS="-XX:+UseCompressedOops -Dcom.sun.management.jmxremote $HADOOP_DATANODE_OPTS -Dcom.sun.management.jmxremote.port=8006"
export HADOOP_BALANCER_OPTS="-XX:+UseCompressedOops -Dcom.sun.management.jmxremote $HADOOP_BALANCER_OPTS -Dcom.sun.management.jmxremote.port=8007"
export HADOOP_JOBTRACKER_OPTS="-Xmx2000m -XX:+UseCompressedOops -Dcom.sun.management.jmxremote $HADOOP_JOBTRACKER_OPTS -Dcom.sun.management.jmxremote.port=8008"
export HADOOP_TASKTRACKER_OPTS="-Dcom.sun.management.jmxremote.port=8009"
# The following applies to multiple commands (fs, dfs, fsck, distcp etc)
# export HADOOP_CLIENT_OPTS

# Extra ssh options.  Empty by default.
# export HADOOP_SSH_OPTS="-o ConnectTimeout=1 -o SendEnv=HADOOP_CONF_DIR"

# Where log files are stored.  $HADOOP_HOME/logs by default.
# export HADOOP_LOG_DIR=${HADOOP_HOME}/logs

# File naming remote slave hosts.  $HADOOP_HOME/conf/slaves by default.
# export HADOOP_SLAVES=${HADOOP_HOME}/conf/slaves

# host:path where hadoop code should be rsync'd from.  Unset by default.
# export HADOOP_MASTER=master:/home/$USER/src/hadoop

# Seconds to sleep between slave commands.  Unset by default.  This
# can be useful in large clusters, where, e.g., slave rsyncs can
# otherwise arrive faster than the master can service them.
# export HADOOP_SLAVE_SLEEP=0.1

# The directory where pid files are stored. /tmp by default.
export HADOOP_PID_DIR=/var/hadoop/pids

# A string representing this instance of hadoop. $USER by default.
# export HADOOP_IDENT_STRING=$USER

# The scheduling priority for daemon processes.  See 'man nice'.
# export HADOOP_NICENESS=10
