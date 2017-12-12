FROM drydock/u14all:master

ADD . /u14cloall

RUN /u14cloall/install.sh
