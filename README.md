# docker-letsencrypt
Obtains and manages free SSL certificates from the Let's Encrypt CA


Docker image based in alpine to use with nginx proxy.

Run with docker run --name=letscrypt oondeo/letsencrypt parameters

And run nginx with --volumes-from letsencrypt

in your server directive include /etc/letsencrypt/nginx.conf

We use it with a config file in /etc/letsencrypt/letsencrypt.ini then
docker create -v /etc/letsencrypt/letsencrypt.ini:/etc/letsencrypt/letsencrypt.ini --name=letscrypt oondeo/letsencrypt

when domains must be updated only run docker start letsencrypt
