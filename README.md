# tsscmp-ruby
[![Build Status](https://travis-ci.org/saka1/tsscmp-ruby.svg?branch=master)](https://travis-ci.org/saka1/tsscmp-ruby)

This gem provides timing-safe string compare with [double HMAC pattern](https://www.nccgroup.trust/us/about-us/newsroom-and-events/blog/2011/february/double-hmac-verification/).
It is inspired by [suryagh's tsscmp library](https://github.com/suryagh/tsscmp).

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

- Statistical tests on timing-safe
- Remove dependency to openssl

