# Arcane-Agent

This Home Assistant app runs the official Arcane Agent in direct mode. It
requires Supervisor and access to the host's Docker socket.

## Setup

1. In Arcane, open **Environments → Add Environment**, choose **Direct**, and
   create the environment before starting this app.
2. Set the Agent API URL in Arcane to the Home Assistant host's reachable
   address on port `3553`, for example `http://192.168.1.20:3553`.
3. Copy the generated `MANAGER_API_URL` and `AGENT_TOKEN` into this app's
   configuration.
4. Start the app. Make sure the Arcane Manager can reach TCP port `3553` on the
   Home Assistant host, including any firewall or router rules.

The app maps container port `3553` to host port `3553` and mounts the Docker
socket so Arcane can manage containers on this host. Keep the port reachable
only by your Arcane Manager and trusted networks. Do not use `localhost` for
the Agent API URL in Arcane unless the Manager runs on the same host network.

See the [Arcane remote environment guide](https://getarcane.app/docs/remote/environments)
for details.
