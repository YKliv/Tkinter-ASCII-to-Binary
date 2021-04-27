# frozen_string_literal: true

module CircleCI
  module CLI
    module Command
      class BaseCommand
        class << self
          def setup_token
            CircleCi.configure do |config|
              config.token = ENV['C