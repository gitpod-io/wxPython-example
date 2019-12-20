FROM gitpod/workspace-full-vnc:latest

USER gitpod

# Install WXPython Dependencies
RUN sudo apt-get -q update \
    && sudo apt-get install -yq \
        freeglut3-dev \
    && sudo rm -rf /var/lib/apt/lists/*

# Give control back to gitpod layer
USER root
