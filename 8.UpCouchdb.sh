docker container stop couchdb
docker container rm -f couchdb

docker container stop couchdb2
docker container rm -f couchdb2

docker run -dp 5985:5984 -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password --name=couchdb couchdb:3.2.0
docker run -dp 5986:5984 -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password --name=couchdb2 couchdb:3.2.0
