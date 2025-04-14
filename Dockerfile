FROM texlive/texlive:latest

LABEL \
    org.opencontainers.image.description="Docker image containing a LaTeX template aligned with the DHSN Dresden Styleguide. TEXINPUTS is preconfigured to include the template."

COPY . /usr/local/share/ba-latex-template

ENV TEXINPUTS=/usr/local/share/ba-latex-template//:
