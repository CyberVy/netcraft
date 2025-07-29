set -e

sys_info=$(uname -s)
echo "$sys_info"

arch_info=$(uname -m)
echo "$arch_info"

version="2025.7.0"

if [[ "$sys_info" = "Darwin" &&  ("$arch_info" = "x86_64"  ||  "$arch_info" = "amd64") ]]; then
  curl -Lo ./cloudflared.tgz "https://github.com/cloudflare/cloudflared/releases/download/$version/cloudflared-darwin-amd64.tgz"
  tar -xzf ./cloudflared.tgz
  rm ./cloudflared.tgz

elif [[ "$sys_info" = "Darwin" &&  ("$arch_info" = "arm64" || "$arch_info" = "aarch64") ]]; then
  curl -Lo ./cloudflared.tgz "https://github.com/cloudflare/cloudflared/releases/download/$version/cloudflared-darwin-arm64.tgz"
  tar -xzf ./cloudflared.tgz
  rm ./cloudflared.tgz

elif [[ "$sys_info" = "FreeBSD" &&  ("$arch_info" = "x86_64"  ||  "$arch_info" = "amd64") ]]; then
  curl -Lo ./cloudflared "https://github.com/cloudflare/cloudflared/releases/download/$version/cloudflared-amd64.pkg"

elif [[ "$sys_info" = "FreeBSD" &&  ("$arch_info" = "arm64" || "$arch_info" = "aarch64") ]]; then
  curl -Lo ./cloudflared "https://github.com/cloudflare/cloudflared/releases/download/$version/cloudflared-arm64.pkg"

elif [[ "$sys_info" = "Linux" &&  ("$arch_info" = "x86_64"  ||  "$arch_info" = "amd64") ]]; then
  curl -Lo ./cloudflared "https://github.com/cloudflare/cloudflared/releases/download/$version/cloudflared-linux-amd64"

elif [[ "$sys_info" = "Linux" &&  ("$arch_info" = "arm64" || "$arch_info" = "aarch64") ]]; then
  curl -Lo ./cloudflared "https://github.com/cloudflare/cloudflared/releases/download/$version/cloudflared-linux-arm64"

else
  echo "Not Supported OS ar arch."
  exit 1
fi

chmod +x ./cloudflared

echo "Hello, it works fine and the tips for running are below."
echo "Caution: no caution"
echo "CMD: ./cloudflared"
echo "Params: tunnel[run[--protocol,--token,...]],service[install,uninstall]"
