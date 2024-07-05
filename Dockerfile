FROM alpine:latest as builder

RUN apk update && apk add texlive-full
COPY resume.tex .
RUN pdflatex resume.tex

FROM nginxinc/nginx-unprivileged

WORKDIR /resume

COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder resume.pdf Jeremy_Smart_resume.pdf

