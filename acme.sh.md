# wild card
- set domain
```sh
print "enter domain: "
read domain
```
- issue cert
```sh
./acme.sh --issue -d $domain --dns --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
```
- renew cert
```sh
./acme.sh --renew -d $domain --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
```
