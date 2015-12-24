FROM drydock/u14all:prod

ADD . /u14cloall

RUN /u14cloall/install.sh
