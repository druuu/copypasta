# wild card
- set domain
```sh
export DOMAIN=example.com
```
- get cert
```sh
./acme.sh --issue -d $DOMAIN --dns --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
printf "press enter to continue.."
read
./acme.sh --renew -d $DOMAIN --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
```
