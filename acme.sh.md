# wild card
- issue cert
```sh
./acme.sh --issue -d example.com --dns --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
```

- renew cert
```sh
./acme.sh --renew -d example.com --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
```
