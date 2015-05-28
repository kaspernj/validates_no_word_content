# validates_no_word_content

## Install

Add to your Gemfile and bundle like this:

```ruby
gem 'validates_no_word_content'
```

## Usage

Add to your model like this:

```ruby
class Article < ActiveRecord::Base
  validates :content, no_word_content: true
end
```

## Contributing to validates_no_word_content

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2015 kaspernj. See LICENSE.txt for
further details.

