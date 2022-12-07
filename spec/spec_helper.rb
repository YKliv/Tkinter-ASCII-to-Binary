# frozen_string_literal: true

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.add_filter ['spec']
  SimpleCov.star