# frozen_string_literal: true

module CircleCI
  module CLI
    module Printer
      class StepPrinter
        def initialize(steps, pretty: true)
          @steps = steps
          @pretty = pretty
        end

        def to_s #