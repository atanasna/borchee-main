HOW TO DEPLOY

Initial:

    sudo apt update
    sudo apt install build-essential

Prepare the Database:

    sudo apt-get install mysql-server
    sudo apt install libmysqlclient-dev
    mysql -u root -p
    CREATE USER 'money'@'localhost' IDENTIFIED BY 'chicksForFree';

Install ruby environment:

    sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    source ~/.bashrc
    git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
    rbenv install 2.7.0
    rbenv global 2.7.0
    gem install bundler
    gem install rails -v 6.0.2

Start:
    
    bundler install
    rake db:create
    rake db:migrate
    rake db:seed
    rails s