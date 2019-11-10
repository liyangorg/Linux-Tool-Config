```shell
ctags -R        \
--exclude=block \
--exclude=certs \
--exclude=crypto \
--exclude=drivers \
--exclude=firmware \
--exclude=net \
--exclude=security \
--exclude=sound \
--exclude=virt \
--exclude=samples \
--exclude=tools \
--exclude=scripts \
--exclude=arch . arch/arm64 tools/include tools/lib tools/vm tools/arch/arm64
```
