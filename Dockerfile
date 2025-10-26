FROM node:22-alpine

RUN apk update && \
    apk add --no-cache git sudo openssh-client && \
    rm -rf /var/cache/apk/*

ARG USERNAME=node
RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

RUN npm install -g @angular/cli