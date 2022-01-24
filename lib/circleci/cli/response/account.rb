# frozen_string_literal: true

module CircleCI
  module CLI
    module Response
      class Account
        def initialize(hash)
          @hash = hash
        end

        def pusher_id
    