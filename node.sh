################################################################
#!/bin/bash                                                    #
# Script For installing Nodejs                                 #
# p0f - www.r00tn3twork.com -  admin@r00tn3twork.com           #
# 17/02/2013                                                   #
################################################################
echo "Installing libraries . . . . . . . . . . . . . . . . . . "
sudo apt-get install g++ curl libssl-dev apache2-utils
sudo apt-get install git-core
echo "Install npm package manager . . . . . . . . . . . . . . ."
echo
cd /usr/local/src
git clone http://github.com/isaacs/npm.git
cd npm/
make install
echo "Install express framework . . . . . . . . . . . . . . . ."
echo
npm install -g express
express /var/www/foo/
cd /var/www/foo/
npm install -d
echo "First Installation Done . . . . . . . . . . . . . . . . ."
echo "Download Latest Nodejs . . . . . . . . . . . . . . . . . ."
wget http://nodejs.org/dist/v0.8.20/node-v0.8.20.tar.gz
chmod +x node-v*.tar.gz
tar -zxf node-v*.tar.gz
cd node-v*
echo "Install Nodejs . . . . . . . . . . . . . . . . . . . . . ."
./configure
make
sudo make install
echo "Installation Nodejs Complete . . . . . . . . . . . . . . . "
echo "var http = require('http');
http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Hello World\n');
}).listen(1337, '127.0.0.1');
console.log('Server running at http://127.0.0.1:1337/');" > app.js
chmod +x app.js
echo "Installation Framework Complete"
echo "->GIT CORE"
echo "->NPM PACKAGE MANAGER"
echo "->EXPRESS FRAMEWORK"
echo "Server started . . . . . . . . . . . . . . . . . . . . . . "
node app.js