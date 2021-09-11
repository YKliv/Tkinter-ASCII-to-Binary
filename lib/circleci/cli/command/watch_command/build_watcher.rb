# frozen_string_literal: true

module CircleCI
  module CLI
    module Command
      class BuildWatcher
        attr_reader :build

        def initialize(build, verbose: false)
          @build = build
          @verbose = verbose
          @messages = Hash.new { |h, k| h[k] = [] }
        end

        def start
          bind_event_handling @build.channel_name
          notify_started
        end

        def stop(status)
          client.unsubscribe("#{@build.channel_name}@0")
          notify_stopped(status)
        end

        private

        def bind_event_handling(channel) # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
          client.bind_event_json(channel, 'newAction') do |j