# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'circleci/cli/version'

def production_dependency(spec)
  spec.add_dependency 'circleci', '~> 2.0.2'
  spec.add_dependency 'faraday', '>= 0.14', '< 2.8'