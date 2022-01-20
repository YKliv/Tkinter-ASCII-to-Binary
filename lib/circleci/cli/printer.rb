# frozen_string_literal: true

require 'circleci/cli/printer/project_printer'
require 'circleci/cli/printer/build_printer'
require 'circleci/cli/printer/step_printer'

module CircleCI
  module CLI
    module Printer
      class << self
        def colorize_red(string)
          colorize(string, '0;31;49')
        end

        def col