#!/bin/bash

# Run Besu with the appropriate arguments, replacing $(POD_IP) with the container's IP address
exec besu --sync-mode=X_SNAP \
          --data-storage-format=BONSAI \
          --rpc-http-enabled=true \
          --rpc-http-host='0.0.0.0' \
          --rpc-ws-enabled=true \
          --rpc-ws-host='0.0.0.0' \
          --rpc-http-cors-origins=* \
          --rpc-http-api=ETH,NET,CLIQUE,DEBUG,MINER,NET,PERM,ADMIN,EEA,TXPOOL,PRIV,WEB3 \
          --host-allowlist="eth-node-teku,127.0.0.1,localhost" \
          --engine-host-allowlist="eth-node-teku,127.0.0.1,localhost" \
          --nat-method=DOCKER \
          --metrics-enabled \
          --engine-rpc-enabled \
          --engine-jwt-secret=/var/lib/besu/jwt/jwtsecret.hex