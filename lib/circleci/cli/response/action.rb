# frozen_string_literal: true

module CircleCI
  module CLI
    module Response
      class Action
        attr_reader :name, :status, :run_time_millis

        def initiali