sudo apt-get install -y emacs python-dev python-setuptools build-essential erlang-nox libevent-dev git golang mercurial default-jdk ruby rubygems haskell-platform
sudo easy_install ws4py gevent

git clone git://github.com/ericmoritz/wsdemo.git wsdemo

sudo cp wsdemo/etc/sysctl.conf /etc/
sudo sysctl -p

mkdir src
pushd src
  curl http://nodejs.org/dist/v0.7.11/node-v0.7.11.tar.gz | tar xz
  pushd node-v0.7.11
    ./configure && make && sudo make install
  popd
popd

npm install websocket
npm install ws
sudo go get code.google.com/p/go.net/websocket
sudo gem install em-websocket

sudo cabal update
sudo cabal install snap-server snap-core websockets websockets-snap

sudo apt-get install -y libadns1-dev
echo -e "y\ny\no conf prerequisites_policy follow\no conf commit" | sudo cpan
sudo cpan Protocol::WebSocket
sudo cpan EV::ADNS
yes | sudo cpan IO::Stream

