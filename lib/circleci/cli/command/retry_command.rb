
# frozen_string_literal: true

module CircleCI
  module CLI
    module Command
      class RetryCommand < BaseCommand
        class << self
          def run(options)
            setup_token
            username, reponame = project_name(options).split('/')
            number = build_number_for(username, reponame, options)

            build = Response::Build.retry(username, reponame, number)
