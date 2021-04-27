openssl ocsp -port 9080 -index /etc/ssl/ca/db/index -rsigner /etc/ssl/ca/root-ca.crt -rkey /etc/ssl/ca/private/root-ca.key -CA /etc/ssl/ca/root-ca.crt -text
