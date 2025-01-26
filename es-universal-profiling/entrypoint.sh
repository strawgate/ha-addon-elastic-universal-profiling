#!/usr/bin/with-contenv bashio

echo "Starting Elastic Universal Profiling Entrypoint"
CONFIG_PATH=/data/options.json

PROJECTID="$(bashio::config 'projectid')"
SECRETTOKEN="$(bashio::config 'secrettoken')"
COLLECTIONAGENT="$(bashio::config 'collectionagent')"

projectid=$1
echo -e "project-id $PROJECTID" >> /etc/Elastic/universal-profiling/pf-host-agent.conf
echo -e "secret-token $SECRETTOKEN" >> /etc/Elastic/universal-profiling/pf-host-agent.conf
echo -e "collection-agent $COLLECTIONAGENT" >> /etc/Elastic/universal-profiling/pf-host-agent.conf

echo "Starting Elastic Universal Profiling Agent"
/opt/Elastic/universal-profiling/pf-host-agent/pf-host-agent