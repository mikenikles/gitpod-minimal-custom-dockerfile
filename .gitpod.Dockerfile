FROM ubuntu

RUN apt-get update \
  && apt-get install -yq --no-install-recommends \
    software-properties-common \
  && add-apt-repository -y ppa:git-core/ppa \
  && apt-get install -yq --no-install-recommends \
    git \
  && apt-get clean -y \
  && rm -rf \
    /var/cache/debconf/* \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/*
