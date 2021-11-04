# wild card
```sh
printf "enter domain: "
read domain
./acme.sh --issue -d $domain --dns --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
printf "\nenter to continue"
./acme.sh --renew -d $domain --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
```
