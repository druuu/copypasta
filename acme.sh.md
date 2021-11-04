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
