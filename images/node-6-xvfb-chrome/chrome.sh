#!/bin/bash

# from https://github.com/circleci/image-builder

function install_chrome_browser() {
    echo '>>> Installing Chrome'

    local url="https://s3.amazonaws.com/circle-downloads/google-chrome-stable_54.0.2840.100-1_amd64.deb"
    local deb_path="/tmp/google-chrome.deb"

    curl --output $deb_path $url

    dpkg -i $deb_path || apt-get -f install -y

    # Disable sandboxing - it conflicts with unprivileged lxc containers
    sed -i 's|HERE/chrome"|HERE/chrome" --disable-setuid-sandbox --enable-logging --no-sandbox|g' \
               "/opt/google/chrome/google-chrome"
}

install_chrome_browser
