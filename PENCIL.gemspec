lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# My personal information about the gem
Gem::Specification.new do |spec|
  spec.name          = "PENCIL"
  spec.version       = '1.0'
  spec.authors       = ["Stephen Anthony"]
  spec.summary       = %q{Pencil Project}
  spec.description   = %q{We will use pencils to write on paper.}
  spec.homepage      = "https://protected-hollows-34186.herokuapp.com/"
  spec.files         = []
  spec.executables   = ['bin/app']
  spec.test_files    = ['tests/test_pencil.rb']
  spec.require_paths = ["bin"]
end
