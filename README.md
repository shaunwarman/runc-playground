
## Overview
A simple playground within docker to use the runc CLI and freely create containers based on OCI standards.

## Install
```
docker pull shaunw321/runc-playground
```

## Run
```
docker run -it --name runc-pg shaunw321/runc-playground
```

## Playground
```
docker exec -it runc-pg bash
runc
```

## Docs
```USAGE:
   runc [global options] command [command options] [arguments...]

VERSION:
   1.0.0-rc4+dev
commit: beb8716fcb400d5f555c5d96a0534572d40f0248
spec: 1.0.0

COMMANDS:
     checkpoint  checkpoint a running container
     create      create a container
     delete      delete any resources held by the container often used with detached container
     events      display container events such as OOM notifications, cpu, memory, and IO usage statistics
     exec        execute new process inside the container
     init        initialize the namespaces and launch the process (do not call it outside of runc)
     kill        kill sends the specified signal (default: SIGTERM) to the container's init process
     list        lists containers started by runc with the given root
     pause       pause suspends all processes inside the container
     ps          ps displays the processes running inside a container
     restore     restore a container from a previous checkpoint
     resume      resumes all processes that have been previously paused
     run         create and run a container
     spec        create a new specification file
     start       executes the user defined process in a created container
     state       output the state of a container
     update      update container resource constraints
     help, h     Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --debug             enable debug output for logging
   --log value         set the log file path where internal debug information is written (default: "/dev/null")
   --log-format value  set the format used by logs ('text' (default), or 'json') (default: "text")
   --root value        root directory for storage of container state (this should be located in tmpfs) (default: "/run/runc")
   --criu value        path to the criu binary used for checkpoint and restore (default: "criu")
   --systemd-cgroup    enable systemd cgroup support, expects cgroupsPath to be of form "slice:prefix:name" for e.g. "system.slice:runc:434234"
   --help, -h          show help
   --version, -v       print the version
```
