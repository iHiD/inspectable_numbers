# Inspectable Numbers

This gem adds underscoring to numbers in Ruby. That means when you print out large numbers, then look like `10_000_000` rather than `10000000`.

o we go from:

```ruby
10000000000
=> 10000000000 
```

to: 
```ruby
require "inspectable_numbers"

10000000000
=> 10_000_000_000 
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'inspectable_numbers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inspectable_numbers

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iHiD/inspectable_numbers.
