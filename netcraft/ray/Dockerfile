FROM ubuntu

RUN curl -fsSL "https://github.com/CyberVy/netcraft/raw/refs/heads/main/netcraft/ray/ray_install.sh" | bash && \
    curl -Lo ./ray_assets/config.json "https://github.com/CyberVy/netcraft/raw/refs/heads/main/netcraft/ray/config.json"

CMD ./ray_assets/ray run -c ./ray_assets/config.json
