export FABRIC_CFG_PATH=${PWD}/config

export CC_NAME_V="asset-transfer-3"
export PEER0_ORG1_CA=${PWD}/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export PEER0_ORG2_CA=${PWD}/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt

export ORDERER_CA=${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051


peer chaincode invoke -o localhost:7050 \
    --ordererTLSHostnameOverride orderer.example.com \
    --tls true \
    --cafile $ORDERER_CA \
    -C mychannel \
    -n ${CC_NAME_V} \
    --peerAddresses localhost:7051 \
    --tlsRootCertFiles $PEER0_ORG1_CA \
    --peerAddresses localhost:9051 \
    --tlsRootCertFiles $PEER0_ORG2_CA \
    -c '{"function": "TransferAsset", "Args":["asset1", "Meng"]}'
