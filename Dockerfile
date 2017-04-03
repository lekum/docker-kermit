FROM ubuntu:xenial
RUN apt update && apt install -yq build-essential libncurses5-dev
RUN ln -s /usr/lib/x86_64-linux-gnu/libcrypt.so /usr/lib/libcrypt.so
RUN ln -s /usr/lib/x86_64-linux-gnu/libresolv.so /usr/lib/libresolv.so
COPY cku211.tar.Z /tmp/kermit/
COPY .kermrc /root/.kermrc
RUN cd /tmp/kermit && tar -zxvf cku211.tar.Z && make linux && mv /tmp/kermit/wermit /usr/bin/kermit && chmod +x /usr/bin/kermit
WORKDIR /opt/kermit
CMD ["kermit"]
