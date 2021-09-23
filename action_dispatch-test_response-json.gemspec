
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "action_dispatch/test_response/json/version"

Gem::Specification.new do |spec|
  spec.name          = "action_dispatch-test_response-json"
  spec.version       = ActionDispatch::TestResponse::Json::VERSION
  spec.authors       = ["yalab"]
  spec.email         = ["rudeboyjet@gmail.com"]

  spec.summary       = "You can use `response.json` yey."
  spec.description   = "This gem provide response.json on your test."
  spec.homepage      = "https://github.com/yalab/action_dispatch-test_response-json"
  spec.license       = "MIT"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "actionpack"
end
