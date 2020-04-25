FROM ubuntu:18.04
RUN apt-get update && apt-get install -y socat
CMD socat  -U - sctp-listen:11111,fork,reuseaddr
