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
              reponame,
              branch: branch_name(options),
              user: options.user
            )
            @client = Networking::CircleCIPusherClient.new.tap(&:connect)
            @build_watcher = nil

            bind_status_event

            loop do
              stop_existing_watcher_if_needed
              start_watcher_if_needed
              sleep 1
            end
          rescue Interrupt
            say 'Exited'
        