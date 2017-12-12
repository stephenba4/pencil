# The style of code that the compiler will read is utf-8
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# My personal information about the gem
Gem::Specification.new do |spec|
  spec.name          = "PENCIL"
  spec.version       = '1.0'
  spec.authors       = ["Stephen Anthony"]
  spec.summary       = %q{Pencil Project}
  spec.description   = %q{We will create pencil instances to write on paper.}
  spec.homepage      = "http://domainforproject.com/"
  spec.files         = ['lib/PENCIL.rb', 'lib/APPLE.rb']
  spec.executables   = ['bin/PENCIL']
  spec.test_files    = ['tests/test_PENCIL.rb', 'tests/test_APPLE.rb']
  spec.require_paths = ["lib"]
end
