FROM resin/rpi-raspbian:jessie-20160831
RUN apt-get update
RUN apt-get install apt-transport-https wget -y --force-yes
RUN wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key  | apt-key add -
RUN echo "deb https://dev2day.de/pms/ jessie main" | tee /etc/apt/sources.list.d/pms.list
RUN apt-get update
#RUN apt-get install -t jessie plexmediaserver -y 
RUN wget -O readynas.deb https://downloads.plex.tv/plex-media-server/1.2.7.2987-1bef33a/plexmediaserver-ros6-binaries-annapurna_1.2.7.2987-1bef33a_armel.deb
RUN mkdir -p /usr/lib/plexmediaserver
RUN dpkg-deb --fsys-tarfile readynas.deb | tar -xf - -C /usr/lib/plexmediaserver --strip-components=4 ./apps/plexmediaserver-annapurna/Binaries

VOLUME /media

ADD start.sh /

EXPOSE 32469 32400 32412 32413 32414 5353 1900

CMD /start.sh


