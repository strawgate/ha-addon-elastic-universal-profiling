ARG BUILD_FROM
FROM $BUILD_FROM

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Update Base
RUN apt-get -qq update \
    && apt-get -qq install wget \
    && (apt-get autoremove -y; apt-get autoclean -y)

RUN wget -O pf-host-agent.tgz "https://artifacts.elastic.co/downloads/prodfiler/pf-host-agent-8.17.1-linux-arm64.tar.gz" && tar xzf pf-host-agent.tgz
RUN mv pf-host-agent-8.17.1-linux-arm64 /pf-host-agent
RUN chmod +x /pf-host-agent/pf-host-agent

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

CMD /entrypoint.sh