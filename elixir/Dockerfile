FROM eleidan/elixir:1.11.2-ubuntu-16.04

USER root

RUN wget https://github.com/exercism/cli/releases/download/v3.0.13/exercism-linux-64bit.tgz \
    && tar -xf exercism-linux-64bit.tgz \
    && mv exercism /usr/bin/ \
    && rm exercism-linux-64bit.tgz

### Adopt container user for the host UID and GID
ARG HOST_UID=1000
ARG HOST_GID=1000
RUN mkdir ${HOME}/.mix ${HOME}/.hex ${HOME}/.config
RUN usermod -u ${HOST_UID} phantom
RUN groupmod -g ${HOST_GID} phantom
RUN chown -R phantom:phantom ${HOME}

USER phantom
