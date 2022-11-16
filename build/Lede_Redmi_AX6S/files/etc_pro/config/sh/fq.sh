chmod -R 0777 /etc/config/
chmod -R 0777 /usr/share/openclash/dashboard/




sed -i 's/http:\/\/www.gstatic.com\/generate_204/http:\/\/www.google.com/g' /usr/share/openclash/dashboard/assets/index*.js
sed -i 's/http:\/\/www.gstatic.com\/generate_204/http:\/\/www.google.com/g' /usr/share/openclash/yacd/assets/index*.js
#####sed -i "s#http://www.gstatic.com/generate_204#http://www.google.com#" /usr/share/openclash/dashboard/assets/index.44e2a61b.js


sh /etc/config/sh/openclash.sh && /etc/init.d/openclash restart