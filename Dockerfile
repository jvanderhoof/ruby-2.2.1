FROM ubuntu:14.04

RUN apt-get update -qq && apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libcurl4-openssl-dev libffi-dev curl libxml2-dev libxslt1-dev libpq-dev nodejs libqt4-webkit libqt4-dev xvfb

RUN cd /tmp; \
curl -O http://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.1.tar.gz; \
sudo chown default: *.tar.gz; \
tar xvzf *.tar.gz; rm -f *.tar.gz; cd ruby*; \
./configure; \
make; \
make install; \
cd; \
rm -rf /tmp/ruby*

RUN gem install bundler pry --no-rdoc --no-ri

