FROM paidnetwork/rust as builder
ARG PROFILE=release

WORKDIR /builds/collator

COPY . .

RUN . $HOME/.cargo/env && cargo build --${PROFILE}

EXPOSE 40334 30334 8845 9976
