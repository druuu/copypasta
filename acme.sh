# get acme.sh
```sh
git clone https://github.com/acmesh-official/acme.sh
cd acme.sh
```

# single cert
- stop app running on port 80
```sh
export DOMAIN=example.com
./acme.sh --issue --standalone -d $DOMAIN
```


# wild card certificate
```sh
export DOMAIN=*.example.com
./acme.sh --issue -d $DOMAIN --dns --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
./acme.sh --renew -d $DOMAIN --yes-I-know-dns-manual-mode-enough-go-ahead-please --server letsencrypt
```
