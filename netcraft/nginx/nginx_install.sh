set -e

version="1.29.0"

echo "If your run this script on a docker, before installation,"
echo "please apt-get install -y build-essential libpcre3 libpcre3-dev libssl-dev zlib1g-dev"

curl -Lo nginx.tar.gz https://nginx.org/download/nginx-$version.tar.gz

tar -zxvf nginx.tar.gz

cd ./nginx-$version
./configure --prefix=./nginx --with-http_ssl_module

make -j$(nproc)
make install

cd ..
mv ./nginx-1.29.0/nginx ./nginx

rm -rf ./nginx-1.29.0/
rm ./nginx.tar.gz

echo "Use ./nginx/sbin/nginx -c ./nginx/conf/nginx.conf to run nginx"
