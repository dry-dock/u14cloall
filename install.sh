#!/bin/bash -e

sudo apt-get clean
sudo mv /var/lib/apt/lists/* /tmp
sudo mkdir -p /var/lib/apt/lists/partial
sudo apt-get clean
sudo apt-get update

# install Clojure's build tool: leiningen
echo "================= Install clojure's build tool: leiningen ==================="
sudo wget -nv https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo mv lein /usr/local/bin/lein
sudo chmod a+x /usr/local/bin/lein

apt-get install rlwrap

for file in /u14cloall/version/*;
do
  $file
done
