# Ventana

Ventana takes two dates and gives you a nice string with the window between those two dates

## Installation

Add this line to your application's Gemfile:

    gem 'ventana'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ventana

## Usage

Just pass two dates to the `Ventana` method and get back a string with the window between those two dates.

```ruby
date1 = Time.new(2014,6,3,4)
date2 = Time.new(2014,6,4,7)

puts Ventana(date1,date2)
# => June 3 to 4, 2014 from 4AM to 7AM
```

For more exeamples of how different times and dates are rendered check out the [example file](https://github.com/sagmor/ventana/blob/master/test/examples.csv).

## Contributing

1. Fork it ( http://github.com/sagmor/ventana/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
