FROM ghcr.io/agnos-ai/rdchoke:main

WORKDIR /home/ekgprocess

COPY entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["/home/ekgprocess/entrypoint.sh"]
