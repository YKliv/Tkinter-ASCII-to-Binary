# frozen_string_literal: true

require 'circleci/cli/command/watch_command/build_repository'
require 'circleci/cli/command/watch_command/build_watcher'

module CircleCI
  module CLI
    module Command
      class WatchCommand < BaseCommand
        class << self
          def run(options) # rubocop:disable Metrics/MethodLength
            setup_token

            username, reponame = project_name(options).split('/')
            @options = options
            @repository = BuildRepository.new(
              username,
              repon