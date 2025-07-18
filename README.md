# netcraft

A tunnel softwares installer for Linux system, which allows you to install them with no root privilege.

Every software is installed in cruent work directory by default. Use process manager to make them keep running.

---
### Cloudflared
```shell
curl -fsSL https://... | bash
./cloudflared tunnel run --protocol http2 --token <your token>
```

---
### Nginx
```shell
# Before installation, please install build-essential libpcre3 libpcre3-dev libssl-dev zlib1g-dev
curl -fsSL https://... | bash
./nginx/sbin/nginx
```
---

### X-Ray
```shell
curl -fsSL https://... | bash
./ray run -c <your config file path>
```
