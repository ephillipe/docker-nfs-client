Docker NFS Client
================

Usage
----
```bash
docker run -d --name nfs ephillipe/docker-nfs-server /path/to/share /path/to/share2 /path/to/shareN
```

```bash
docker run -d --name nfs-client --link nfs:nfs ephillipe/docker-nfs-client /path/on/nfs/server:/path/on/client
``` 

Detailed How to
----
http://container42.com/2014/03/29/docker-quicktip-4-remote-volumes/

Enabling cache
----
http://askubuntu.com/questions/4572/how-can-i-cache-nfs-shares-on-a-local-disk
http://xmodulo.com/how-to-enable-local-file-caching-for-nfs-share-on-linux.html

Source
----
https://github.com/cpuguy83/
