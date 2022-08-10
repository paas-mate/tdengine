FROM ttbb/base

WORKDIR /opt/sh

RUN wget https://www.taosdata.com/assets-download/TDengine-server-2.6.0.6-Linux-x64.tar.gz  && \
mkdir -p /opt/sh/tdengine && \
tar -xf TDengine-server-2.6.0.6-Linux-x64.tar.gz -C /opt/sh/tdengine --strip-components 1 && \
rm -rf TDengine-server-2.6.0.6-Linux-x64.tar.gz && \
cd /opt/sh/tdengine && \
/opt/sh/tdengine/install.sh -e no && \
echo "end"

ENV TDENGINE_HOME /opt/sh/tdengine

WORKDIR /opt/sh/tdengine
