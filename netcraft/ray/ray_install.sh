set -e

sys_info=$(uname -s)
echo "$sys_info"

arch_info=$(uname -m)
echo "$arch_info"

version="v25.6.8"
ray_dir="ray_assets"

if [[ "$sys_info" = "Darwin" &&  ("$arch_info" = "x86_64"  ||  "$arch_info" = "amd64") ]]; then
  curl -Lo ./_macos-64.zip "https://github.com/XTLS/Xray-core/releases/download/$version/Xray-macos-64.zip"
  unzip _macos-64.zip -d ./$ray_dir
  rm ./_macos-64.zip

elif [[ "$sys_info" = "Darwin" &&  ("$arch_info" = "arm64" || "$arch_info" = "aarch64") ]]; then
  curl -Lo ./_macos-64.zip "https://github.com/XTLS/Xray-core/releases/download/$version/Xray-macos-arm64-v8a.zip"
  unzip _macos-64.zip -d ./$ray_dir
  rm ./_macos-64.zip

elif [[ "$sys_info" = "FreeBSD" &&  ("$arch_info" = "x86_64"  ||  "$arch_info" = "amd64") ]]; then
  curl -Lo ./_freebsd-64.zip "https://github.com/XTLS/Xray-core/releases/download/$version/Xray-freebsd-64.zip"
  unzip _freebsd-64.zip -d ./$ray_dir
  rm ./_freebsd-64.zip

elif [[ "$sys_info" = "FreeBSD" &&  ("$arch_info" = "arm64" || "$arch_info" = "aarch64") ]]; then
  curl -Lo ./_freebsd-64.zip "https://github.com/XTLS/Xray-core/releases/download/$version/Xray-freebsd-arm64-v8a.zip"
  unzip _freebsd-64.zip -d ./$ray_dir
  rm ./_freebsd-64.zip

elif [[ "$sys_info" = "Linux" &&  ("$arch_info" = "x86_64"  ||  "$arch_info" = "amd64") ]]; then
  curl -Lo ./_linux-64.zip "https://github.com/XTLS/Xray-core/releases/download/$version/Xray-linux-64.zip"
  unzip _linux-64.zip -d ./$ray_dir
  rm ./_linux-64.zip

elif [[ "$sys_info" = "Linux" &&  ("$arch_info" = "arm64" || "$arch_info" = "aarch64") ]]; then
  curl -Lo ./_linux-64.zip "https://github.com/XTLS/Xray-core/releases/download/$version/Xray-linux-arm64-v8a.zip"
  unzip _linux-64.zip -d ./$ray_dir
  rm ./_linux-64.zip

else
  echo "Not Supported OS ar arch."
  exit 1
fi

rm ./$ray_dir/README.md
mv ./$ray_dir/xray ./$ray_dir/ray
chmod +x ./$ray_dir/ray

echo "Hello, it works fine and the tips for running are below."
echo "Caution: no caution"
echo "CMD: ./ray_assets/ray"
echo "Params: run[-c[config path]]"
