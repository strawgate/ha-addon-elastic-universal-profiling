#!/usr/bin/with-contenv bashio

echo "Starting Elastic Universal Profiling Entrypoint"
CONFIG_PATH=/data/options.json

PROJECTID="$(bashio::config 'projectid')"
SECRETTOKEN="$(bashio::config 'secrettoken')"
COLLECTIONAGENT="$(bashio::config 'collectionagent')"

echo -e "project-id $PROJECTID" >> /pf-host-agent.conf
echo -e "secret-token $SECRETTOKEN" >> /pf-host-agent.conf
echo -e "collection-agent $COLLECTIONAGENT" >> /pf-host-agent.conf

echo "Starting Elastic Universal Profiling Agent"
cat pf-host-agent.conf
/pf-host-agent/pf-host-agent -config /pf-host-agent.conf