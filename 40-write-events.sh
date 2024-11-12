
. kafka.sh

pushd "$kafka_dir" || { echo "could not enter dir: $kafka_dir"; exit 1; }

bin/kafka-console-producer.sh --topic quickstart-events --bootstrap-server localhost:9092

popd
