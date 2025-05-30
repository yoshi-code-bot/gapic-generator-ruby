# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/compute/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-compute-v1"
  gem.version       = Google::Cloud::Compute::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "google-cloud-compute-v1 is the official client library for the Google Cloud Compute V1 API. This library is considered to be in alpha. This means it is still a work-in-progress and under active development. Any release is subject to backwards-incompatible changes at any time."
  gem.summary       = "API Client library (ALPHA) for the Google Cloud Compute V1 API."
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.1"

  gem.add_dependency "gapic-common", ">= 0.6", "< 2.a"
  gem.add_dependency "google-cloud-common", "~> 1.0"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
end
