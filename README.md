# PQC_SSH
This is the fork from Openssh can use "Kyber" as a key exchange method when C/S lauch SSH connection

## Insatllation
### Install those packege before you build this fork
On Ubuntu :
```bash
  sudo apt install astyle cmake gcc ninja-build libssl-dev python3-pytest python3-pytest-xdist unzip xsltproc doxygen graphviz python3-yaml valgrind
```
On macOS, using a package manager of your choice (Homebrew as example):
```bash
 brew install cmake ninja openssl@3 wget doxygen graphviz astyle valgrind
 pip3 install pytest pytest-xdist pyyaml
```
### Run below command to build this fork
```bash
# 1, clone this repo and get into it
git clone https://github.com/leowu0411/PQC_SSH.git && cd PQC_SSH
```

```bash
#2 Run follow command on your terminal.(MUST follow the order when building this fork)
./build-scripts/clone_liboqs.sh
./build-scripts/build_liboqs.sh
./build-scripts/build_openssh.sh
```

## How to use
### Server END
In server end, go to location where to build this fork, and run

```bash
$(pwd)/sshd -f $(pwd)/sshd_config
```
the "sshd_config" can be modified, like change port, how to do authorization, etc.

### Client end
And in client end, also go to location where to build this fork, and run
```bash
# the kex can switch to kyber-512-sha256, kyber-768-sha384, or kyber-1024-sha512
$(pwd)/ssh -F ssh_config -i ~/.ssh/UserPrivate.key -o KexAlgorithms=kyber-512-sha-256 -v username@server-ip
```
