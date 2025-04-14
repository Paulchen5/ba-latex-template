FROM texlive/texlive:latest

LABEL \
    org.opencontainers.image.description="A LaTeX template, which tries to implement the DHSN Dresden Styleguide, packaged into a Docker image. The image sets the TEXINPUTS environment varibale to a reference to the template. The template itself is located under `/usr/local/share/ba-latex-template/`"

COPY . /usr/local/share/ba-latex-template

ENV TEXINPUTS=/usr/local/share/ba-latex-template//:
