#!/usr/bin/with-contenv bashio

MANAGER_API_URL="$(bashio::config 'manager_api_url')"
AGENT_TOKEN="$(bashio::config 'agent_token')"

# add date to default bashio log timestamp
declare __BASHIO_LOG_TIMESTAMP="%Y-%m-%d %T"

if [[ -z "${MANAGER_API_URL}" || -z "${AGENT_TOKEN}" ]]; then
    bashio::log.error "Set the Arcane Manager API URL and Agent Token in the app configuration."
    exit 1
fi

bashio::log.info "Starting Arcane Agent in direct mode on port 3553"
AGENT_MODE=true \
AGENT_TOKEN="${AGENT_TOKEN}" \
MANAGER_API_URL="${MANAGER_API_URL}" \
PORT=3553 \
exec ./arcane-agent
