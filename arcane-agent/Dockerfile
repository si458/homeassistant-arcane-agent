ARG BUILD_FROM
FROM $BUILD_FROM

ARG ARCANE_AGENT_VERSION=2.13.1
ARG TARGETARCH

COPY run.sh /
RUN chmod a+x /run.sh

WORKDIR /
RUN curl -fsSL "https://github.com/getarcaneapp/arcane/releases/download/v${ARCANE_AGENT_VERSION}/arcane-agent_linux_${TARGETARCH}" -o /arcane-agent \
	&& chmod +x /arcane-agent

CMD [ "/run.sh" ]
