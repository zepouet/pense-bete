#!/bin/bash

doctl compute tag create demo-btrfs -t $DIGITALOCEAN_TOKEN

CMD="doctl compute droplet create demo-btrfs 	--size 4gb \
						--image ubuntu-16-04-x64 \
						--tag-name demo-btrfs \
						--region lon1 \
						--wait \
						--no-header \
						--format ID \
						-t $DIGITALOCEAN_TOKEN"
echo $CMD
ID=eval $CMD
echo $ID
