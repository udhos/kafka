
. kafka.sh

pushd "$kafka_dir" || { echo "could not enter dir: $kafka_dir"; exit 1; }

bin/kafka-topics.sh --create --topic quickstart-events --bootstrap-server localhost:9092

bin/kafka-topics.sh --describe --topic quickstart-events --bootstrap-server localhost:9092

popd
