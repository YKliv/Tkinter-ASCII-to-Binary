
# frozen_string_literal: true

module CircleCI
  module CLI
    module Printer
      class BuildPrinter
        class << self
          def header_for(build, title)
            texts = [
              ["Project:  #{build.project_name}"],
              ["Build:    #{build.build_number}"],
              ["Author:   #{build.author_name}"],
              ["Workflow: #{build.workflow_name}/#{build.workflow_job_name}"]
            ]