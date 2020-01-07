FROM gitpod/workspace-full-vnc:latest

USER root

ARG DEBIAN_FRONTEND=noninteractive

# Install WXPython Dependencies
RUN apt-get -q update \
    && apt-get install -yq \
        freeglut3-dev \
        python3.7-dev \
        libpython3.7-dev \
        libgl1-mesa-dev \
        libglu1-mesa-dev \
        libgstreamer-plugins-base1.0-dev \
        libgtk-3-dev \
        libnotify-dev \
        libsdl2-dev \
        libwebkit2gtk-4.0-dev \
        libxtst-dev \
        libgtk2.0-dev \
    && sudo rm -rf /var/lib/apt/lists/*

# Add wxpython itself

USER gitpod

RUN pip3 install -U -f https://extras.wxpython.org/wxPython4/extras/linux/gtk3/ubuntu-19.04/ wxPython
