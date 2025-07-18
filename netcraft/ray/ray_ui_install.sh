sys_info=$(uname -s)
echo "$sys_info"

arch_info=$(uname -m)
echo "$arch_info"

ui_dir="ray_ui_assets"

if [[ "$sys_info" = "Linux" &&  ("$arch_info" = "x86_64"  ||  "$arch_info" = "amd64") ]]; then
  curl -Lo ./_linux-64.tar.gz "https://github.com/MHSanaei/3x-ui/releases/download/v2.6.2/x-ui-linux-amd64.tar.gz"

  tar -xzf _linux-64.tar.gz
  mv ./x-ui ./$ui_dir

  mv ./$ui_dir/x-ui ./$ui_dir/ray-ui

  rm ./_linux-64.tar.gz

  chmod +x ./$ui_dir/bin/xray-linux-amd64

elif [[ "$sys_info" = "Linux" &&  ("$arch_info" = "arm64" || "$arch_info" = "aarch64") ]]; then
  curl -Lo ./_linux-64.tar.gz "https://github.com/MHSanaei/3x-ui/releases/download/v2.6.2/x-ui-linux-arm64.tar.gz"

  tar -xzf _linux-64.tar.gz
  mv ./x-ui ./$ui_dir

  mv ./$ui_dir/x-ui ./$ui_dir/ray-ui

  rm ./_linux-64.tar.gz

  chmod +x ./$ui_dir/bin/xray-linux-arm64

else
  echo "Not Supported OS ar arch."
  exit 1
fi

rm ./$ui_dir/x-ui.service
rm ./$ui_dir/x-ui.sh
rm ./$ui_dir/bin/README.md

chmod +x ./$ui_dir/ray-ui

echo "Hello, it works fine and the tips for running are below."
echo "Caution: please execute [cd ./ray_ui_assets] before running ray-ui"
echo "CMD: ./ray-ui"
echo "Params: run, setting[-username,-password,-port,-webBasePath]"
