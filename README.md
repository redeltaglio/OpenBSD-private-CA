# OpenBSD SSH and SSL CA server
![img](https://learnbchs.org/puffy.png)



Configuration of an OpenBSD rugged secured server to obtain a private CA for SSH and SSL.

Reverse a private server, kvm instance, docker or another container for this type of application. It'll be useful have it on a spare encrypted USB disk or virtual hided disk. I've got one mounted on a dedicated `macppc` OpenBSD instance. I use it like local LAN resolver, SNMP collector and, how not, like a CA server.

```shell
taglio@cyberanarkhia:/home/taglio$ uname -a
OpenBSD cyberanarkhia.telecom.lobby 6.7 GENERIC.MP#2 macppc
taglio@cyberanarkhia:/home/taglio$
```

#### SSH

No everyone know it, but sshd as ssl can use certificate based authentication. It's a feature of `openssh`. 

Just clone this repository on the OpenBSD CA server machine:

Nice Regards,

Riccardo `<taglio>` Giuntoli.



