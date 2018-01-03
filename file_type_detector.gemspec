
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "file_type_detector/version"

Gem::Specification.new do |spec|
  spec.name          = "file_type_detector"
  spec.version       = FileTypeDetector::VERSION
  spec.authors       = ["jeffreybaird"]
  spec.email         = ["jeff@jeffreyleebaird.com"]

  spec.summary       = %q{Detects file extension}
  spec.description   = %q{Detects file extension}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry", "~> 0.11.1"
end
