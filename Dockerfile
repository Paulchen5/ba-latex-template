FROM alpine:latest

LABEL \
    org.opencontainers.image.title="Docker Image of BA LaTeX Template" \
    org.opencontainers.image.authors="Paulchen <lukas.23022005@gmail.com>" \
    org.opencontainers.image.source="https://github.com/ba-dresden/ba-latex-template" \
    org.opencontainers.image.licenses="The Unlicense"

RUN apk upgrade --no-cache --no-progress \
    && apk add --no-cache --no-progress texlive

RUN apk add --no-cache --no-progress texmf-dist-latexextra

COPY . /usr/local/share/ba-latex-template

ENV TEXINPUTS=/usr/local/share/ba-latex-template//

