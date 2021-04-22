# frozen_string_literal: true

require_relative "lib/allure_report_publisher/version"

Gem::Specification.new do |spec|
  spec.version       = Allure::Publisher::VERSION
  spec.name          = "allure-report-publisher"
  spec.authors       = ["Andrejs Cunskis"]
  spec.email         = ["andrejs.cunskis@gmail.com"]

  spec.summary       = "Allure report uploader"
  spec.description   = "Upload allure reports to different file storage providers"
  spec.homepage      = "https://github.com/andrcuns/allure-report-uploader"
  spec.license       = "MIT"

  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => "https://github.com/andrcuns/allure-report-uploader",
    "changelog_uri" => "https://github.com/andrcuns/allure-report-uploader/releases",
    "documentation_uri" => "https://github.com/andrcuns/allure-report-uploader/blob/master/README.md",
    "bug_tracker_uri" => "https://github.com/andrcuns/allure-report-uploader/issues",
  }

  spec.files         = Dir["README.md", "lib/**/*", "bin/allure-report-publisher"]
  spec.bindir        = "bin"
  spec.executables   = ["allure-report-publisher"]
  spec.require_paths = ["lib"]

  spec.add_dependency "cli-ui", ">= 1.5", "< 2"
  spec.add_dependency "dry-cli", ">= 0.6", "< 1"
  spec.add_dependency "parallel", ">= 1.20", "< 2"
  spec.add_dependency "require_all", ">= 2", "< 4"
  spec.add_dependency "aws-sdk-s3", ">= 1.93", "< 2"

  spec.add_development_dependency "pry-byebug", "~> 3.9"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-shopify", "~> 1.0"
  spec.add_development_dependency "rubocop-rspec", "~> 2.2"
  spec.add_development_dependency "solargraph", "~> 0.40.4"
end
