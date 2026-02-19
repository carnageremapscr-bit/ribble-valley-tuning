FROM caddy:2-alpine

WORKDIR /srv
COPY . /srv

EXPOSE 8080
CMD ["caddy", "file-server", "--root", "/srv", "--listen", ":{$PORT:8080}"]
