# See COPYING for license.

FROM debian:7

RUN apt-get update -y
RUN apt-get install -y \
    build-essential \
    libboost-all-dev \
    libdb++-dev \
    libjson-spirit-dev

COPY . .
WORKDIR src
RUN make

EXPOSE 9911 9913
VOLUME ["/data"]

CMD ./primecoind -datadir="/data"
