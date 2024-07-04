FROM nginx:alpine

WORKDIR /resume

RUN sh -c "apk update && apk add texlive-full"
RUN apk add shadow

COPY nginx.conf /etc/nginx/nginx.conf
COPY resume.tex .
RUN pdflatex resume.tex
RUN mv resume.pdf Jeremy_Smart_resume.pdf

RUN useradd www
RUN chown -RL www:www /etc /var
USER www:www

