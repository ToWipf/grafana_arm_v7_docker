FROM arm32v7/debian

RUN apt-get update && apt-get upgrade -y && apt-get install -y adduser wget libfontconfig1
RUN wget https://dl.grafana.com/oss/release/grafana-rpi_7.5.5_armhf.deb
RUN dpkg -i grafana-rpi_7.5.5_armhf.deb
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
