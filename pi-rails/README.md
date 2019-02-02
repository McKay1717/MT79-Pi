# Strassen Algorithm
## Nicolas Iung - Aurélien Blais

### Setup

* Install Ruby 2.5.3 (using RVM for example : https://rvm.io/)
* Install gem bundler (`gem install bundler`)
* Install gems (`bundle`)
* Launch WebServer using `rails s`
* Open any navigator to `http://localhost:3000`
* If needed a static snapshot can be found at `http://naritaya.org/utbm/mt79-pi`

### Source Code
The different algorithms are located in `app/models`\
The front page code can be found in `app/views/home/index.haml`\
The values used by the front page to generate charts can be found in `app/controllers/home_controller.rb`

### Ruby installation
Setup on fresh install (gpg2 keys should be verified on rvm website)
```bash
sudo apt install gnupg2
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.5.3
```

Once done you can check using `ruby -v` which should return something like `ruby 2.5.3p105 (2018-10-18 revision 65156) [x86_64-linux]`