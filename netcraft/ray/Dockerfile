FROM ubuntu

RUN apt-get update && apt-get install -y curl bash unzip && \
    curl -fsSL "https://github.com/CyberVy/netcraft/raw/refs/heads/main/netcraft/ray/ray_install.sh" | bash && \
    curl -Lo ./ray_assets/config.json "https://github.com/CyberVy/netcraft/raw/refs/heads/main/netcraft/ray/config.json"

CMD bash -c "./ray_assets/ray run -c ./ray_assets/config.json"
