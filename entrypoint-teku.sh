#!/bin/bash

# Run Teku with the specified arguments
exec /opt/teku/bin/teku \
    --network=mainnet \
    --ee-endpoint=http://eth-node-besu:49250 \
    --ee-jwt-secret-file=/var/lib/teku/jwt/jwtsecret.hex \
    --p2p-port=9000 \
    --metrics-enabled=true \
    --rest-api-enabled=true \
    --checkpoint-sync-url=https://beaconstate.ethstaker.cc \
    --beacon-liveness-tracking-enabled=true