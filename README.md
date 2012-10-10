# Bogie

Gem for migrate legacy data inspired by [Trucker](https://github.com/mokolabs/trucker)

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

Create Legacy class file and rake task with:

    $ rails generate bogie:model Post

Use `rake` to migrate:

    $ rake db:migrate:posts

## TODO

* Update README and USAGE
* Write more test

## Changelog

* 0.0.1
    * Initialized gem
* 0.0.2
    * Add progress bar

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

Thank you [Patrick Crowley](https://github.com/mokolabs) and [Rob Kaufman](https://github.com/orangewolf) who developed [Trucker](https://github.com/mokolabs/trucker).