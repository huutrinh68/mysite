FROM nginx:1.15.8-alpine

COPY conf/mysite_nginx.conf /etc/nginx/conf.d/mysite_nginx.conf

CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf