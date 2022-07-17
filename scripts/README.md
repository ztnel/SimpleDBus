# Builder Scripts

### Development Environment
Development for simpledbus can be done in a ubuntu docker container using [this](../test/Dockerfile) dockerfile. The steps for building and running the headless image is encapsulated inside the `build_dev.sh` shell script. Run the script and you will be dropped into a shell with a mount of the repository root:
```bash
./scripts/build_dev.sh
...
root@simpledbus-dev:/app# ls -la
drwxr-xr-x 18 root root  576 Jul 17 23:41 .
drwxr-xr-x  1 root root 4096 Jul 17 23:38 ..
-rw-r--r--  1 root root 3268 Jul 17 21:39 .clang-format
drwxr-xr-x 15 root root  480 Jul 17 23:19 .git
drwxr-xr-x  4 root root  128 Feb 20 17:14 .github
-rw-r--r--  1 root root   85 Jul 17 21:39 .gitignore
drwxr-xr-x  3 root root   96 Jul 17 21:41 .vscode
-rw-r--r--  1 root root 4240 Jul 17 21:39 CMakeLists.txt
-rw-r--r--  1 root root 1074 Jul 17 21:39 LICENSE
-rw-r--r--  1 root root 1828 Jul 17 21:39 README.rst
drwxr-xr-x  3 root root   96 Jul 17 21:39 cmake
drwxr-xr-x 10 root root  320 Jul 17 21:39 docs
drwxr-xr-x  4 root root  128 Feb 20 17:14 examples
drwxr-xr-x  3 root root   96 Feb 20 17:14 include
drwxr-xr-x  7 root root  224 Jul 17 23:40 scripts
drwxr-xr-x  5 root root  160 Feb 20 17:14 src
drwxr-xr-x  7 root root  224 Jul 17 23:19 test
```

To enable the dbus in a headless environment you need to export the session address:
```bash
export "DBUS_SESSION_BUS_ADDRESS=$(dbus-daemon --config-file=/usr/share/dbus-1/session.conf --print-address --fork | cut -d, -f1)"
```