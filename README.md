# OpenBSD SSH and SSL CA server
![img](https://learnbchs.org/puffy.png)



Configuration of an OpenBSD rugged secured server to obtain a private CA for SSH and SSL.

Reverse a private server, kvm instance, docker or another container for this type of application. It'll be useful have it on a spare encrypted USB disk or virtual hided disk. I've got one mounted on a dedicated `macppc` OpenBSD instance. I use it like local LAN resolver, SNMP collector and, how not, like a CA server.

```shell
taglio@cyberanarkhia:/home/taglio$ uname -a
OpenBSD cyberanarkhia.telecom.lobby 6.8 GENERIC.MP#3 macppc
taglio@cyberanarkhia:/home/taglio$ 
```

#### CA server

No everyone know it, but sshd as ssl can use certificate based authentication. It's a feature of `openssh`. 

Just clone this repository on the OpenBSD CA server machine:

 ```shell
$ mkdir -p Sources/Git
$ cd Sources/Git
$ git clone https://github.com/redeltaglio/OpenBSD-private-CA.git
$ cd OpenBSD-private-CA
 ```

Our `setup_node` script got some options:

- `install  -> create SSH and SSL private CA` 
- `verify   -> printout and verify certificates` 
- `reset    -> reset filesystem hierarchy and delete certificates and keys` 
- `transfer -> tar files on /home/$USER`



Nice Regards,

Riccardo `<taglio>` Giuntoli.



