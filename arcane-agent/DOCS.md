# Arcane-Agent

This add-on runs the official Arcane Agent in direct mode and exposes its API on TCP port `3553`.

## Setup

1. In Arcane, open **Environments** and create a **Direct** environment before starting this add-on.
2. Set the Agent API URL to the Home Assistant host's reachable address on port `3553`, for example `http://192.168.1.20:3553`.
3. Copy the generated `MANAGER_API_URL` and `AGENT_TOKEN` into this add-on's configuration.
4. Start the add-on and allow the Arcane Manager to connect to the Home Assistant host on TCP port `3553`.

The add-on uses host networking and Docker socket access. Keep port `3553` reachable only by your Arcane Manager and trusted networks. The Arcane Agent data directory is persisted in the add-on configuration directory.

See the [Arcane direct environment guide](https://getarcane.app/docs/features/environments#add-a-direct-environment) for details.
