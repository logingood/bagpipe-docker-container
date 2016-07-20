docker run --name bagpipe -dti --cap-add=NET_ADMIN -v /root/bagpipe-docker-container/conf:/etc/bagpipe-bgp -v /root/bagpipe-docker-container/logs:/var/log/bagpipe-bgp -p 127.0.0.1:8082:8082  bagpipe-bgp  bash -c "service bagpipe-bgp start"
