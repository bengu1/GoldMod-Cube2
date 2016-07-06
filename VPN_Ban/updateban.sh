#!/bin/sh 

echo "Getting updated ban file from pisto's github..."

wget https://raw.githubusercontent.com/pisto/ASkidban/master/compiled/ipv4 -Oaskidban.cfg

echo "Editing  file to fit remod regular ban file..."

sed -i -e 's/^/permban /' askidban.cfg
sed -i -e 's/$/ "askidban"/' askidban.cfg

echo "Done! Now NSA will not connect to your server."

