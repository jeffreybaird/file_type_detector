# FileTypeDetector

## Installation

```ruby
gem 'file_type_detector'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install file_type_detector

## Usage

Usage:

### File Objects
```ruby
file = File.open('/path/to/file', 'r')
FileTypeDetectorTest::Extension.extension(file)
# => '.jpg'
```

### File Paths

```ruby
path = '/path/to/file'
FileTypeDetectorTest::Extension.extension(path)
# => '.jpg'
```

### File String

```ruby
string = File.read('/path/to/file')
FileTypeDetectorTest::Extension.extension(string)
# => '.jpg'
```

## Development

There is plenty to do, this gem currently only supports 'jpg' and 'png'

## License

The gem is available as open source under the terms of the People's License

## Code of Conduct

Everyone interacting in the FileTypeDetector project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/jeffreybaird/file_type_detector/blob/master/CODE_OF_CONDUCT.md).
