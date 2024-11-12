
. kafka.sh

pushd "$kafka_dir" || { echo "could not enter dir: $kafka_dir"; exit 1; }

bin/kafka-console-consumer.sh --topic quickstart-events --from-beginning --bootstrap-server localhost:9092

popd
