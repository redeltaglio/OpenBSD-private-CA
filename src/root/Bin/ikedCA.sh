#!/bin/ksh

CADIR=""${CADIR}"/"

openssl req -new -nodes -keyout "${CADIR}"/private/$1.key -config "${CADIR}"/iked.cnf -out "${CADIR}"/certs/$1.csr
openssl ca -batch -config "${CADIR}"/iked.cnf -in "${CADIR}"/certs/$1.csr -extensions x509v3_client -extfile "${CADIR}"/iked.cnf -out "${CADIR}"/certs/$1.crt
openssl x509 -in "${CADIR}"/certs/$1.crt -pubkey -out "${CADIR}"/certs/$1.pem > "${CADIR}"/public/$1.pub
rm -rf "${CADIR}"/certs/$1.csr
openssl pkcs12 -export -inkey "${CADIR}"/private/$1.key -in "${CADIR}"/certs/$1.crt -out "${CADIR}"/export/$1.p12 -password pass:123456789
