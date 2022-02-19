# frozen_string_literal: true

require 'thor'
require 'faraday'
require 'launchy'
require 'terminal-table'
require 'highline/import'
require 'rugged'
require 'circleci'
require 'terminal-notifier'

require 'circleci/cli/version'
require 'circleci/cli/command'
require 'circleci/cli/response'
require 'circleci/cli/printer'
require 'circleci/cli/networking'

module CircleCI
  module CLI
    class Runner < Thor # rubocop:disable Metrics/ClassLength
      package_name 'circleci-cli'

      class << self
        def project
          repository = Rugged::Reposi