FROM nanic/python2.7-alpine:latest
MAINTAINER kumareddy545@gmail.com
ARG proxy
ENV https_proxy=$proxy \
	LANG=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8
COPY src /apps
WORKDIR /apps
RUN python -V
RUN pip install cryptography && pip install pipenv && pipenv install
CMD ["sh","/apps/bootstrap.sh"]
