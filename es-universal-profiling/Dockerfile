ARG BUILD_FROM
FROM $BUILD_FROM

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Update Base
RUN apt-get -qq update \
    && apt-get -qq install gnupg wget apt-transport-https \
    && (apt-get autoremove -y; apt-get autoclean -y)

RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
RUN echo "deb https://artifacts.elastic.co/packages/8.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-8.x.list
RUN apt-get update && apt-get install pf-host-agent

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

CMD /entrypoint.sh