[![Build Status](https://travis-ci.org/iamkristian/ctags_ruby.png?branch=master)](https://travis-ci.org/iamkristian/ctags_ruby) [![Code Climate](https://codeclimate.com/github/iamkristian/ctags_ruby.png)](https://codeclimate.com/github/iamkristian/ctags_ruby)
# CtagsRuby

Generate ctags files for your ruby project and your projects dependencies.
It will generate a ```.tags``` file for the project files and a ```.gemtags```
for the dependencies, based upon you ```Gemfile```

## Installation

Install it using
~~~shell
gem install ctags_ruby
~~~

## Requirements

The gem requires that you have

* ```find```
* ```ctags```

in your path.

## Usage

Cd into your project and simply type

```shell
ctags_ruby
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Todo

* Make a verbose command line option
* Let it take ctags arguments
* Let it take file mask arguments

# Author

Kristian Rasmussen

License: MIT
