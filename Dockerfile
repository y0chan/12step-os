FROM gcc:4.9.2

ADD build-files/* /usr/local/src/ 
COPY build-shell/* /usr/local/src/ 

RUN /usr/local/src/build-binutils.sh
RUN /usr/local/src/build-gcc.sh
