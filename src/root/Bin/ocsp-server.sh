openssl ocsp -port 9080 -index /etc/ssl/ocsp.pbdigital.org/db/index -rsigner /etc/ssl/ocsp.pbdigital.org/root-ocsp.crt -rkey /etc/ssl/ocsp.pbdigital.org/private/root-ocsp.key -CA /etc/ssl/ocsp.pbdigital.org/root-ca.crt -text