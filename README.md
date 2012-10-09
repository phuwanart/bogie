# Bogie

Gem for migarte legacy data inspired by [Trucker](https://github.com/mokolabs/trucker)

## Installation

Add this line to your application's Gemfile:

    gem 'bogie'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bogie

## Usage

Install essential file and config for Legasy migrate:

    $ rails generate bogie:install

Create Legacy class file and task:

    $ rails generate bogie:model NAME

After config legacy model class file. Use `rake` to run migrate:

    $ rake db:migrate:NAME

## TODO

* Update README and USAGE
* Include progress bar
* Write more test

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
