# Bogie 

[![Gem Version](https://badge.fury.io/rb/bogie.png)](http://badge.fury.io/rb/bogie) [![Build Status](https://travis-ci.org/neokain/bogie.png?branch=master)](https://travis-ci.org/neokain/bogie) [![Dependency Status](https://gemnasium.com/neokain/bogie.png)](https://gemnasium.com/neokain/bogie) [![Coverage Status](https://coveralls.io/repos/neokain/bogie/badge.png)](https://coveralls.io/r/neokain/bogie)

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

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits

Thank you [Patrick Crowley](https://github.com/mokolabs) and [Rob Kaufman](https://github.com/orangewolf) who developed [Trucker](https://github.com/mokolabs/trucker).