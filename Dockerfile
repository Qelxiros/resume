FROM nginx:alpine

WORKDIR /resume

RUN sh -c "apk update && apk add texlive-full"

COPY nginx.conf /etc/nginx/nginx.conf
COPY resume.tex .
RUN pdflatex resume.tex
RUN mv resume.pdf Jeremy_Smart_resume.pdf

RUN chown -RL 1000:1000 /etc /var
USER 1000:1000

