# configtxgen -outputCreateChannelTx ./channel-artifacts/mychannel.tx -profile TwoOrgsApplicationGenesis -channelID mychannel -configPath ${PWD}/config/

export FABRIC_CFG_PATH=${PWD}/config
configtxgen -profile TwoOrgsApplicationGenesis \
            -channelID mychannel \
            -outputCreateChannelTx ./channel-artifacts/mychannel.tx