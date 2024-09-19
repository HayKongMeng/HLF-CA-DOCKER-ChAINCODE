export FABRIC_CFG_PATH=${PWD}/config 
export CC_NAME_V="asset-transfer-3"

export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp

rm ./chaincode/go/asset-transfer.tar.gz
peer lifecycle chaincode package ./chaincode/go/asset-transfer.tar.gz --path ./chaincode/go --lang golang --label ${CC_NAME_V}