#!/bin/sh

mkdir ssl-data/
openssl genrsa -out ssl-data/ca.key 2048
chmod 400 ssl-data/ca.key
openssl req -new -x509 -days 3650 -key ssl-data/ca.key -out ssl-data/ca.crt
openssl genrsa -out ssl-data/cert.key 2048
mkdir ssl-data/certs/
