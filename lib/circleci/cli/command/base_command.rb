# frozen_string_literal: true

module CircleCI
  module CLI
    module Command
      class BaseCommand
        class << self
          def setup_token
            CircleCi.configure do |config|
              config.token = ENV['CIRCLE_CI_TOKEN'] || ask('Circle CI token ? :')
            end
          end

          def project_name(options)
            if options.pr