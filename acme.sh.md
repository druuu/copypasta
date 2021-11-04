# wild card
- set domain
```sh
export DOMAIN=example.com
```
- issue cert
```sh
./acme.sh --issue -d $DOMAIN --dns --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
```
- renew cert
```sh
./acme.sh --renew -d $DOMAIN --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
```
- copy certs
```sh
nginx_dir=$(echo $DOMAIN | sed 's/\*/wild-card/g')
mkdir -p /etc/nginx/certs/$nginx_dir
cp -r ~/.acme.sh/$DOMAIN /etc/nginx/certs/$nginx_dir
```
