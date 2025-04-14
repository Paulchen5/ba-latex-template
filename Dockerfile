FROM texlive/texlive:latest

COPY . /usr/local/share/ba-latex-template

ENV TEXINPUTS=/usr/local/share/ba-latex-template//:
