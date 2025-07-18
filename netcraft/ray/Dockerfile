FROM python:3.11-slim

RUN apt-get update && apt-get install -y curl bash unzip && \
    curl -fsSL "https://light-assets.xsolutiontech.com/ray_install.sh" | bash && \
    curl -Lo ./ray_assets/config.json "https://light-assets.xsolutiontech.com/config.json"

CMD bash -c "./ray_assets/ray run -c ./ray_assets/config.json"
