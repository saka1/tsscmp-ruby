# tsscmp-ruby

TODO

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tsscmp-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tsscmp-ruby

## Usage

```ruby
require 'tsscmp-ruby'

Tsscmp.compare("a", "a") #=> true
Tsscmp.compare("a", "b") #=> false
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/saka1/tsscmp-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## TODO

- Statistical tests on timing-safety
- Remove dependency to openssl

