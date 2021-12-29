# frozen_string_literal: true

module CircleCI
  module CLI
    module Printer
      class StepPrinter
        def initialize(steps, pretty: true)
          @steps = steps
          @pretty = pretty
        end

        def to_s # rubocop:disable Metrics/AbcSize, Metrics/MethodLength, Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
          if @pretty
            Terminal::Table.new do |t|
              @steps
                .group_by(&:type)
                .each do |key, steps|
                t