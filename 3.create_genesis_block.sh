export FABRIC_CFG_PATH=./config

configtxgen -outputBlock ./channel-artifacts/genesis.block -channelID sys-channel -profile TwoOrgsApplicationGenesis

            
            