# Ruby Barcelona Activa

## Today

- Review last [exercise](exercicis/various.rb)

- See [code documentation] in [FakeSinatra].
- [Emmet] config for VSCode in erb templates
- [erb] syntax (variables, loops)

[Procs]: https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/
[Files]: https://www.rubyguides.com/2015/05/working-with-files-ruby/
[String.gsub]: https://www.rubyguides.com/2019/07/ruby-gsub-method/
[FakeSinatra]: sinatra-example/fake_sinatra.rb
[code documentation]:https://stackoverflow.com/questions/1681467/ruby-code-doc
[Emmet]: https://medium.com/@nick.haralampopoulos/emmet-vscode-erb-fdd885007201
[erb]: https://webapps-for-beginners.rubymonstas.org/erb


## Notes about Ruby

- [Install Ruby](https://www.ruby-lang.org/en/downloads/)
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
