# https://github.com/saltstack/salt/issues/51356

1. Generate GPG keys:

```
mkdir gpgkeys
gpg --homedir gpgkeys --yes --pinentry-mode=loopback --passphrase "" --quick-generate-key salt-test
```

2. Encrypt piece of text and put it into `pillar/secrets.sls` (6 times).

```
echo -n "testvalue" | gpg --homedir gpgkeys --armor --batch --trust-model always --encrypt --recipient salt-test
```

3. Add 25 hosts to `config/roster`.

4. Run:

```
salt-ssh '*' state.apply
```
