FROM ubuntu:14.04.1

MAINTAINER Murat Mukhtarov <muhtarov.mr@gmail.com>

RUN apt-get update
RUN apt-get install -qy --no-install-recommends python python-daemon python-setuptools python-pip unzip wget git gcc python-dev
RUN pip install bottle
RUN pip install netaddr

ENV HOME /root
WORKDIR /root

RUN git config --global http.sslVerify false
RUN git clone https://github.com/Orange-OpenSource/bagpipe-bgp.git
RUN cd bagpipe-bgp && python setup.py install
RUN mkdir /var/log/bagpipe-bgp
RUN touch /var/log/bagpipe-bgp/bagpipe-bgp.log
RUN cd bagpipe-bgp && ./install_bagpipe_bgp.sh
