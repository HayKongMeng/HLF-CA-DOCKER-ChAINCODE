export FABRIC_CFG_PATH=${PWD}/config

rm ./chaincode/go/asset-transfer.tar.gz
peer lifecycle chaincode package ./chaincode/go/asset-transfer.tar.gz \
    --path ./chaincode/go \
    --lang golang \
    --label asset_transfer_v1
