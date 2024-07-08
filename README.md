### Generate JWT token
```
openssl rand -hex 32 | tr -d "\n" > jwtsecret.hex
```

### Deploy with Docker Compose
```
docker-compose up --build -d
```

### Create eth-node network
```
docker network create eth-node-network
```

### Build besu image
```
docker build -t eth-node-besu -f Dockerfile.besu .
```

### Start besu docker container
```
docker run -p 8545:8545 -p 13001:30303 --name eth-node-besu --network eth-node-network eth-node-besu
```

### Build teku image
```
docker build -t eth-node-teku -f Dockerfile.teku .
```

### Start teku docker container
```
docker run --name eth-node-teku --network eth-node-network eth-node-teku
```