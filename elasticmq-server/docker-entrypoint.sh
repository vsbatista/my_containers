#!/bin/sh

echo -e "\n===================================================================="
echo " Starting ElasticMQ server"
echo "===================================================================="

# Execute passed CMD arguments
exec "$@"
#
# exec java -Djava.net.preferIPv4Stack=true \
#     -Dconfig.file=/etc/elasticmq/elasticmq.conf \
#     -jar /usr/local/src/elasticmq-server/elasticmq-server.jar
