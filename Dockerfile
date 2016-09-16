FROM drydock/u14all:{{%TAG%}}

ADD . /u14cloall

RUN /u14cloall/install.sh
