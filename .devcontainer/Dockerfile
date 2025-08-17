FROM bretfisher/jekyll

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    git \
    openssh-client \
    sudo \
    procps \
    vim \
    nano \
    less \
    && rm -rf /var/lib/apt/lists/*

RUN adduser vscode \
    && echo "vscode ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers.d/vscode

USER vscode
