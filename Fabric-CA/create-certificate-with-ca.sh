# mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/
export FABRIC_CA_CLIENT_HOME=${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/

# fabric-ca-client enroll -u https://admin:adminpw@localhost:7054 --caname ca.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

# echo 'NodeOUs:
#   Enable: true
#   ClientOUIdentifier:
#     Certificate: cacerts/localhost-7054-ca-org1-example-com.pem
#     OrganizationalUnitIdentifier: client
#   PeerOUIdentifier:
#     Certificate: cacerts/localhost-7054-ca-org1-example-com.pem
#     OrganizationalUnitIdentifier: peer
#   AdminOUIdentifier:
#     Certificate: cacerts/localhost-7054-ca-org1-example-com.pem
#     OrganizationalUnitIdentifier: admin
#   OrdererOUIdentifier:
#     Certificate: cacerts/localhost-7054-ca-org1-example-com.pem
#     OrganizationalUnitIdentifier: orderer' >${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/msp/config.yaml


# "Register peer0"
# fabric-ca-client register --caname ca.org1.example.com --id.name peer0 --id.secret peer0pw --id.type peer --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem


# "Register peer1"
# fabric-ca-client register --caname ca.org1.example.com --id.name peer1 --id.secret peer1pw --id.type peer --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem


# "Register user"
# fabric-ca-client register --caname ca.org1.example.com --id.name user1 --id.secret user1pw --id.type client --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem


# "Register the org admin"
# fabric-ca-client register --caname ca.org1.example.com --id.name org1admin --id.secret org1adminpw --id.type admin --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem


# mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/peers


#  Peer 0
# mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com


# Generate the peer0 msp
# fabric-ca-client enroll -u https://peer0:peer0pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp --csr.hosts peer0.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

#   cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp/config.yaml


# Generate the peer0-tls certificates
# fabric-ca-client enroll -u https://peer0:peer0pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls --enrollment.profile tls --csr.hosts peer0.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem



# cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
# cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/signcerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
# cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/keystore/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key

# mkdir ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/msp/tlscacerts
# cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/msp/tlscacerts/ca.crt

# mkdir ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/tlsca
# cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/tlsca/tlsca.org1.example.com-cert.pem

# mkdir ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/ca
# cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp/cacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/ca/ca.org1.example.com-cert.pem


# Peer1
# mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com


# Generate the peer1 msp
# fabric-ca-client enroll -u https://peer1:peer1pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/msp --csr.hosts peer1.org1.example.com --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem


# Generate the peer1-tls certificates
# fabric-ca-client enroll -u https://peer1:peer1pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls --enrollment.profile tls --csr.hosts peer1.org1.example.com --csr.hosts localhost --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

# cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/tlscacerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/ca.crt
# cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/signcerts/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/server.crt
# cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/keystore/* ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/peers/peer1.org1.example.com/tls/server.key


# mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/users
# mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/users/User1@org1.example.com


# Generate the user msp
# fabric-ca-client enroll -u https://user1:user1pw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/users/User1@org1.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem


# mkdir -p crypto-config-ca/peerOrganizations/org1.example.com/users/Admin@org1.example.com

# Generate the org admin msp
# fabric-ca-client enroll -u https://org1admin:org1adminpw@localhost:7054 --caname ca.org1.example.com -M ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem

# cp ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/crypto-config-ca/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/config.yaml



# revoke

# fabric-ca-client revoke \
#         -e peer1 \
#         -r keycompromise \
#         --gencrl \
#         --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem


# fabric-ca-client reenroll \
#         -u https://peer0:peer0pw@localhost:7054 \
#         --caname ca.org1.example.com \
#         --tls.certfiles ${PWD}/fabric-ca/org1/tls-cert.pem