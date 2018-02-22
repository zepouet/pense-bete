CMD="doctl compute tag delete demo-btrfs -t $DIGITALOCEAN_TOKEN"
echo $CMD
eval $CMD

CMD="doctl compute droplet delete demo-btrfs -t $DIGITALOCEAN_TOKEN"
echo $CMD
eval $CMD
