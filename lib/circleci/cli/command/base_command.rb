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
            if options.project
              options.project
            else
              say Printer::ProjectPrinter.new(Response::Project.all).to_s
              ask(