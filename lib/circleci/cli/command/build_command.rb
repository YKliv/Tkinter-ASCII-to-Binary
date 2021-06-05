# frozen_string_literal: true

module CircleCI
  module CLI
    module Command
      class BuildCommand < BaseCommand
        class << self
          def run(options)
            setup_token
            username, reponame = project_name(options).split('/')
            build =
              if options.last
                get_last_build(username, reponame)
              else
                get_build(username, reponame, options)
              end
            say Printer::StepPrinter.new(build.steps, prett