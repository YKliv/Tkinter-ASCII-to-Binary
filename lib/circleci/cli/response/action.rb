# frozen_string_literal: true

module CircleCI
  module CLI
    module Response
      class Action
        attr_reader :name, :status, :run_time_millis

        def initialize(hash)
          @hash = hash
          @name = hash['name']
          @status = hash['status']
          @run_time_millis = hash['run_time_millis']
        end

        def log
          request(@hash['output_url'])
            .map do |r|
            r['message']
              .gsub(/\r\n/, "\n")
              .gsub(/\e\[A\r\e\[2K/, '')
              .scan(/.{1,120}/)
          