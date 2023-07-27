Sample Playground Repo nix2container

## Testing

> Note that imageName defined in flake gets converted to lowercase for docker image name
```
$ nix run .#buildCommandName.copyToDockerDaemon
warning: Git tree '/home/matt/nix-docker' is dirty
Copy to Docker daemon image imagename:tagName
Getting image source signatures
Copying blob 7f886c73d2b7 done
Copying config e93cc1897e done
Writing manifest to image destination
Storing signatures

$ docker run imagename:tagName
total 8
drwxr-xr-x   5 0 0  340 Jul 27 07:03 dev
drwxr-xr-x   2 0 0 4096 Jul 27 07:03 etc
drwxr-xr-x   3 0 0 4096 Jan  1  1970 nix
dr-xr-xr-x 328 0 0    0 Jul 27 07:03 proc
dr-xr-xr-x  13 0 0    0 May 24 06:46 sys

$ nix run .#hello.copyToDockerDaemon
$ docker run hello:latest
Hello, world!

docker run ls:pkrxmwk2anr2dygyqp5jzg1wskv5nv09
```

## Docs
https://github.com/nlewo/nix2container
