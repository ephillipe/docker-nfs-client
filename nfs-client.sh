#!/bin/bash

set -e

mounts="${@}"
targets=()
PARAMS="${PARAMS:-proto=tcp,port=${NFS_PORT_2049_TCP_PORT}}"

rpcbind

for mnt in "${mounts[@]}"; do
  src=$(echo $mnt | awk -F':' '{ print $1 }')
  target=$(echo $mnt | awk -F':' '{ print $2 }')
  targets+=("$target")

  mkdir -p $target

  mount -t nfs -o ${PARAMS} ${NFS_PORT_2049_TCP_ADDR}:${src} ${target}
done

exec inotifywait -m "${targets[@]}"
