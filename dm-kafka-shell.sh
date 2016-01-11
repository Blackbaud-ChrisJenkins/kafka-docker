export BROKER=$(docker inspect kafka_kafka_1 | jq -r '.[0].NetworkSettings.IPAddress')
export ZK=$(docker inspect kafka_zookeeper_1 | jq -r '.[0].NetworkSettings.IPAddress')
./start-kafka-shell.sh $BROKER $ZK
