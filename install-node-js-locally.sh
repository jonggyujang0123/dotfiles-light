#/bin/bash
wget https://nodejs.org/download/release/v16.20.0/node-v16.20.0-linux-x64.tar.xz
xz -d node-v16.20.0-linux-x64.tar.xz
tar xvf node-v16.20.0-linux-x64.tar
mv node-v16.20.0-linux-x64 ~/bin/
ln -s ~/bin/node-v16.20.0-linux-x64/bin/* ~/bin
rm node-v16.20.0-linux-x64.tar
rm -rf node-v16.20.0-linux-x64 
