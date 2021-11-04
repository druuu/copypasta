# wild card
- set domain
```sh
export DOMAIN=example.com
```
- get cert
```sh
./acme.sh --issue -d $domain --dns --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
printf "\nenter to continue"
./acme.sh --renew -d $domain --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
```
