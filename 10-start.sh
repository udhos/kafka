
. kafka.sh

pushd "$kafka_dir" || { echo "could not enter dir: $kafka_dir"; exit 1; }

KAFKA_CLUSTER_ID="$(bin/kafka-storage.sh random-uuid)"
echo KAFKA_CLUSTER_ID=$KAFKA_CLUSTER_ID

bin/kafka-storage.sh format --standalone -t $KAFKA_CLUSTER_ID -c config/kraft/reconfig-server.properties

bin/kafka-server-start.sh config/kraft/reconfig-server.properties

popd
