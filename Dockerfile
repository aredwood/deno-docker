ARG DENO_VERSION

FROM debian:buster-slim

WORKDIR /install

ENV DENO_VERSION=1.0.0

RUN apt-get update && apt-get install curl unzip -y

RUN curl -fsSL https://deno.land/x/install/install.sh | sh -s $(echo "v${DENO_VERSION}")

ENV DENO_INSTALL="/root/.deno"
ENV PATH="$DENO_INSTALL/bin:$PATH"

WORKDIR /app

COPY . ./

ENTRYPOINT ["deno"]