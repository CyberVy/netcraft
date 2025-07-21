# netcraft

A tunnel softwares installer for Linux system, which allows you to install them with no root privilege.

Every software is installed in the current work directory by default. Use a process manager to make them keep running.

---
### Cloudflared
```shell
curl -fsSL "https://github.com/CyberVy/netcraft/raw/refs/heads/main/netcraft/cloudflared/cfd_install.sh" | bash
./cloudflared tunnel run --protocol http2 --token <your-token>
```

---
### Nginx
```shell
# Before installation, please install build-essential libpcre3 libpcre3-dev libssl-dev zlib1g-dev
curl -fsSL "https://github.com/CyberVy/netcraft/raw/refs/heads/main/netcraft/nginx/nginx_install.sh" | bash
./nginx/sbin/nginx
```
---

### X-Ray
Core
```shell
# Before installation, please install unzip
curl -fsSL "https://github.com/CyberVy/netcraft/raw/refs/heads/main/netcraft/ray/ray_install.sh" | bash
./ray_assets/ray run -c <your-config-file-path>
```
UI
```shell
curl -fsSL "https://github.com/CyberVy/netcraft/raw/refs/heads/main/netcraft/ray/ray_ui_install.sh" | bash
cd ./ray_ui_assets
./ray-ui setting -username <your-username> -password <your-password> -port <your-port> -webBasePath <your-URL-path>
./ray-ui run
```

