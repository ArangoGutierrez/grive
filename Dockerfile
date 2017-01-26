# Google Drive client
#

FROM ubuntu
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y git cmake build-essential libgcrypt11-dev libyajl-dev \
libboost-all-dev libcurl4-openssl-dev libexpat1-dev libcppunit-dev binutils-dev
RUN apt-get update
RUN apt-get install -y zlib1g-dev libncurses5-dev libssl-dev pkg-config
RUN mkdir Driveclient
RUN cd Driveclient
RUN git clone https://github.com/vitalif/grive2
RUN mkdir build
RUN cd build
RUN cmake ..
RUN make -j4
RUN make install
