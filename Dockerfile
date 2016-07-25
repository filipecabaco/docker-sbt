FROM filipecabaco/jre:8

ENV SBT_VERSION 0.13.12
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

ADD https://dl.bintray.com/sbt/native-packages/sbt/0.13.12/sbt-$SBT_VERSION.tgz /usr/local
RUN tar -xzf /usr/local/sbt-$SBT_VERSION.tgz -C /usr/local

RUN sbt
