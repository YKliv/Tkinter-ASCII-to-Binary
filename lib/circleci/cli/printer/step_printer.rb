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
                t << :separator
                t << [{ value: Printer.colorize_green(key), alignment: :center, colspan: 2 }]
                steps.each { |s| print_actions(t, s) }
              end
            end.to_s
          else
            @steps.group_by(&:type).map do |_, steps|
              steps.map do |step|
                step.actions.map do |a|
                  "#{colorize_by_status(a.name.slice(0..120), a.status)}\n#{"#{a.log}\n" if a.failed? && a.log}"
                end
              end.flatten.join
            