HOW TO DEPLOY

Initial:

    sudo apt update
    sudo apt install build-essential

Prepare the Database:

    sudo apt-get install mysql-server
    sudo apt install libmysqlclient-dev
    sudo mysql
    CREATE USER 'borchee'@'localhost' IDENTIFIED BY 'borcheepass';
    GRANT ALL PRIVILEGES ON *.* TO 'borchee'@'localhost';

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

Start:

    bundler install
    rake db:create
    rake db:migrate
    rake db:seed
    sudo env "PATH=$PATH" rails s -b 0.0.0.0 -p 80
