FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY . /code/
# COPY requirements.txt /code/
# ENV HTTPS_PROXY https://z5g0387:gambatte-69@ctcpro.ctc-g.co.jp:8080
# ENV HTTP_PROXY http://z5g0387:gambatte-69@ctcpro.ctc-g.co.jp:8080
RUN mkdir -p /etc/nginx/sites-enabled
RUN ln -s code/nginx/conf/mysite_nginx.conf /etc/nginx/sites-enabled/
# RUN pip --proxy https://z5g0387:gambatte-69@ctcpro.ctc-g.co.jp:8080 --no-cache-dir install -r requirements.txt
RUN pip --no-cache-dir install -r requirements.txt
