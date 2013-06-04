# SimpleFormAngular

This micro-gem allows you to add AngilarJS ng-attributes to Simple Form inputs in your Rails app.

## Installation

Add this line to your application's Gemfile:
    
    gem 'angularjs-rails'
    gem 'simple_form'
    gem 'simple_form_angular'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_form_angular

## Usage

```ruby
  simple_form_for Entry.new, ng: { controller: 'EntriesController' } do |f|
    f.input :title, ng: { model: 'newEntry.title' }
    f.input :description, ng: { model: 'newEntry.description' }
  end
```

## TODO
Write some specs.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
