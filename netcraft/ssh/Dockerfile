FROM ubuntu

RUN apt-get update && apt-get install -y curl openssh-server && \
    curl -fsSL "https://github.com/CyberVy/netcraft/raw/refs/heads/main/netcraft/cloudflared/cfd_install.sh" | bash && \
    mkdir /var/run/sshd && \
    echo "root:admin" | chpasswd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    echo "ListenAddress 127.0.0.1" >> /etc/ssh/sshd_config

CMD /usr/sbin/sshd -D
