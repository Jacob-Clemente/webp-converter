# Build Stage
FROM --platform=linux/amd64 ubuntu:20.04 as builder

ADD . /webp-converter
WORKDIR /webp-converter

# nothing needed :)

FROM --platform=linux/amd64 ubuntu:20.04
COPY --from=builder /webp-converter/bin/libwebp_linux/bin/webpinfo /
