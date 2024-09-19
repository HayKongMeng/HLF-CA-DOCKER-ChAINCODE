export FABRIC_CFG_PATH=${PWD}/config

export CORE_PEER_ID="Org2MSP"
export CORE_PEER_LOCALMSPID="Org2MSP"

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_ADDRESS=localhost:9051

peer channel update -o localhost:7050 \
                    -c mychannel -f ./channel-artifacts/Org2Anchor.tx \
                    --tls --cafile ${PWD}/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
                    