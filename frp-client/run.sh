#!/usr/bin/with-contenv bashio
WAIT_PIDS=()
CONFIG_PATH='/share/frpc.toml'
DEFAULT_CONFIG_PATH='/frpc.toml'

function stop_frpc() {
    bashio::log.info "Shutdown MBTech Cloud client"
    kill -15 "${WAIT_PIDS[@]}"
    wait "${WAIT_PIDS[@]}"
}


bashio::log.info "Applying configuration"
cp $DEFAULT_CONFIG_PATH $CONFIG_PATH
sed -i "s/^serverAddr.*/serverAddr = \"$(bashio::config 'Addres')\"/" "$CONFIG_PATH"
sed -i "s/^auth\.token.*/auth.token = \"$(bashio::config 'Token')\"/" "$CONFIG_PATH"
sed -i "s/^user.*/user = \"$(bashio::config 'Username')\"/" "$CONFIG_PATH"
sed -i "s/^metadatas\.token.*/metadatas.token = \"$(bashio::config 'Password')\"/" "$CONFIG_PATH"


bashio::log.info "Starting MBTech Cloud client"

cd /usr/src
./frpc -c $CONFIG_PATH & WAIT_PIDS+=($!)

tail -f /share/frpc.log &

trap "stop_frpc" SIGTERM SIGHUP
wait "${WAIT_PIDS[@]}"
