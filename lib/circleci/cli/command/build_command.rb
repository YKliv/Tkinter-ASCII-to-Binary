# frozen_string_literal: true

module CircleCI
  module CLI
    module Command
      class BuildCommand < BaseCommand
        class << self
          def run(options)
            setup_token
            username, reponame = project_nam