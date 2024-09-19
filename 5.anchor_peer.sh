export FABRIC_CFG_PATH=${PWD}/config
configtxgen -outputAnchorPeersUpdate ./channel-artifacts/Org1Anchor.tx -profile TwoOrgsApplicationGenesis -channelID mychannel -asOrg Org1MSP
configtxgen -outputAnchorPeersUpdate ./channel-artifacts/Org2Anchor.tx -profile TwoOrgsApplicationGenesis -channelID mychannel -asOrg Org2MSP