FROM gitpod/workspace-full-vnc:latest

# install dependencies
RUN sudo apt-get update \
    && sudo apt-get install -y libx11-dev libxkbfile-dev libsecret-1-dev libgconf2-dev libnss3 libgtk-3-dev libasound2-dev twm \
    && sudo apt-get clean \
    && sudo rm -rf /var/cache/apt/* \
    && sudo rm -rf /var/lib/apt/lists/* \
    && sudo rm -rf /tmp/* \
    && curl -sSL https://dot.net/v1/dotnet-install.sh | sudo bash /dev/stdin --channel LTS --runtime dotnet --os linux --version 7.x.x \
    && export DOTNET_ROOT=$HOME/.dotnet \
    && export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools \
    && source ~/.bashrc
