FROM ghcr.io/agnos-ai/rdchoke:main

WORKDIR /home/ekgprocess

# We HAVE to run as root according to Github Actions documentation otherwise we can write anything to
# /github/workspace see:
# https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners#docker-container-filesystem
USER root

COPY entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["/home/ekgprocess/entrypoint.sh"]
