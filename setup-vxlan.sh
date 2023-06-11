#!/bin/bash

docker exec -it clab-vxlan-leaf1 ip link add br0 type bridge
docker exec -it clab-vxlan-leaf1 ip link set dev br0 up
docker exec -it clab-vxlan-leaf1 ip link add vxlan10 type vxlan id 10 dstport 4789
docker exec -it clab-vxlan-leaf1 ip link set dev vxlan10 up
docker exec -it clab-vxlan-leaf1 ip link set vxlan10 master br0
docker exec -it clab-vxlan-leaf1 ip link set eth3 master br0

docker exec -it clab-vxlan-leaf2 ip link add br0 type bridge
docker exec -it clab-vxlan-leaf2 ip link set dev br0 up
docker exec -it clab-vxlan-leaf2 ip link add vxlan10 type vxlan id 10 dstport 4789
docker exec -it clab-vxlan-leaf2 ip link set dev vxlan10 up
docker exec -it clab-vxlan-leaf2 ip link set vxlan10 master br0
docker exec -it clab-vxlan-leaf2 ip link set eth3 master br0

docker exec -it clab-vxlan-leaf3 ip link add br0 type bridge
docker exec -it clab-vxlan-leaf3 ip link set dev br0 up
docker exec -it clab-vxlan-leaf3 ip link add vxlan10 type vxlan id 10 dstport 4789
docker exec -it clab-vxlan-leaf3 ip link set dev vxlan10 up
docker exec -it clab-vxlan-leaf3 ip link set vxlan10 master br0
docker exec -it clab-vxlan-leaf3 ip link set eth3 master br0

