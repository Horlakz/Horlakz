FROM ubuntu:20.04

RUN apt-get update && \
    apt install -y sudo

RUN adduser --disabled-password --gecos '' horlakz
RUN adduser horlakz sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER horlakz
WORKDIR /home/horlakz/app

ENV PATH="/home/horlakz/.local/bin:${PATH}"

# install curl

RUN sudo apt-get update && \
    sudo apt install -y curl

# install node

RUN curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash - && \
    sudo apt install nodejs

# install yarn

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && \
    sudo apt update && \
    sudo apt install -y yarn

# install pm2

RUN yarn global add pm2

# setup svelte and all

RUN chown -R horlakz:horlakz .

COPY --chown=horlakz:horlakz package.json package.json
COPY --chown=horlakz:horlakz . ./

RUN yarn

RUN yarn build
COPY --chown=horlakz:horlakz . ./
