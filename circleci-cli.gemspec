# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'circleci/cli/version'

def production_dependency(spec)
  spec.add_dependency 'circleci', '~> 2.0.2'
  spec.add_dependency 'faraday', '>= 0.14', '< 2.8'
  spec.add_dependency 'highline', '>= 1.7.8', '< 2.2.0'
  spec.add_dependency 'launchy', '>= 2.4.3', '< 2.6.0'
  spec.add_dependency 'pusher-client', '~> 0.6.2'
  spec.add_dependency 'rugged', 