FROM oraclelinux:9

ENV APP gimp

ENV APP_EXEC gimp

ENV DISPLAY :0

ENV USERNAME developer

WORKDIR /app

RUN yum update

RUN yum install -y $APP

RUN adduser $USERNAME

ENV HOME /home/$USERNAME

USER $USERNAME

CMD $APP_EXEC
