# Ruby notes

- Install Ruby
    - https://www.ruby-lang.org/en/downloads/
    - In Windows there's an installer.
    - In Mac/Linux use `rbenv` (in Mac install it via `homebrew`).

- `rbenv versions`
- `rbenv which ruby`
- `rbenv install 2.7.1`
- `rbenv global 2.7.1`
- `gem env` : see configuration of ruby and gem
- `gem env home` : see home path (check these paths: home, gemdir, gempath)
- `GEM_HOME`, `GEM_PATH` : environment variables with the desired gem directory
- `gem list` : list of installed gems
- `gem install bundler` : installs the gem "bundler"
- `bundle init` : creates Gemfile
- `bundle add sinatra` : adds gem to Gemfile
- `bundle install` : installs gems if necessary
