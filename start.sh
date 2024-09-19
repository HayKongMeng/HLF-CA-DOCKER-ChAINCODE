#!/bin/bash

tmux new-session -d -s fabric-setup

tmux send-keys -t fabric-setup "bash ./2.generate_create_crypto_config.sh" C-m
tmux send-keys -t fabric-setup "bash ./3.create_genesis_block.sh" C-m
tmux send-keys -t fabric-setup "bash ./4.create_channel.sh" C-m
tmux send-keys -t fabric-setup "bash ./5.anchor_peer.sh" C-m

# Sleep 3 seconds to give the orderer time to start
tmux send-keys -t fabric-setup "bash ./6.up_orderer.sh" C-m
tmux send-keys -t fabric-setup "sleep 3s" C-m

tmux split-window -h

# Run the second set of scripts in the second pane
tmux send-keys -t fabric-setup "bash ./7.create_channel.sh" C-m
tmux send-keys -t fabric-setup "bash ./8.UpCouchdb.sh" C-m
tmux send-keys -t fabric-setup "sleep 3s" C-m

tmux send-keys -t fabric-setup "bash ./9.upPeer1.sh" C-m
tmux send-keys -t fabric-setup "sleep 2s" C-m
tmux split-window -v

tmux send-keys -t fabric-setup "bash ./10.upPeer2.sh" C-m
tmux send-keys -t fabric-setup "sleep 2s" C-m
tmux split-window -h

tmux send-keys -t fabric-setup "bash ./11.join_peer_org1.sh" C-m
tmux send-keys -t fabric-setup "bash ./12.join_peer_org2.sh" C-m
tmux send-keys -t fabric-setup "bash ./13.updateAnchor.sh" C-m
tmux send-keys -t fabric-setup "bash ./14.updateAnchor2.sh" C-m


# Deploy chaincode
tmux send-keys -t fabric-setup "bash ./15.prepare-chaincode.sh" C-m
tmux send-keys -t fabric-setup "bash ./16.install-chaincode.sh" C-m

tmux attach-session -t fabric-setup
