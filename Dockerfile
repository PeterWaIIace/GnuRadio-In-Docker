FROM ubuntu 
ARG DEBIAN_FRONTEND=noninteractive
RUN set -ex \
 && apt-get update && apt-get install -y --no-install-recommends avahi-daemon libnss-mdns
RUN apt-get update  -y
RUN apt-get upgrade -y
RUN apt-get install -y git cmake g++ libboost-all-dev libgmp-dev swig python3-numpy python3-mako python3-sphinx python3-lxml doxygen libfftw3-dev libsdl1.2-dev libgsl-dev libqwt-qt5-dev libqt5opengl5-dev python3-pyqt5 liblog4cpp5-dev libzmq3-dev python3-yaml python3-click python3-click-plugins python3-zmq python3-scipy python3-gi python3-gi-cairo gobject-introspection gir1.2-gtk-3.0
RUN apt-get install -y uhd-host uhd-soapysdr
RUN apt-get install -y limesuite limesuite-udev
RUN apt-get install -y soapyosmo-common0.7 soapyremote-server soapysdr-module-airspy soapysdr0.7-module-airspy soapysdr-module-all soapysdr0.7-module-all soapysdr-module-audio soapysdr0.7-module-audio soapysdr-module-bladerf soapysdr0.7-module-bladerf soapysdr-module-hackrf soapysdr0.7-module-hackrf soapysdr-module-lms7 soapysdr0.7-module-lms7 soapysdr-module-mirisdr soapysdr0.7-module-mirisdr soapysdr-module-osmosdr soapysdr0.7-module-osmosdr soapysdr-module-redpitaya soapysdr0.7-module-redpitaya soapysdr-module-remote soapysdr0.7-module-remote soapysdr-module-rtlsdr soapysdr0.7-module-rtlsdr soapysdr-module-uhd soapysdr0.7-module-uhd soapysdr-tools
RUN apt-get install -y gnuradio gnuradio-dev
RUN apt-get install -y gr-limesdr
RUN apt-get install -y gqrx-sdr
RUN apt-get install -y xterm
ARG DEBIAN_FRONTEND=interactive
RUN adduser radioop
RUN su radioop
CMD ["/usr/bin/xterm"]
