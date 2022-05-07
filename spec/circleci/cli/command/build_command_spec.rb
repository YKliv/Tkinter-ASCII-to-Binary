# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Command::BuildCommand, type: :command do
  shared_examples_for 'a command show build information' do
    let(:expected_output) do
      <<~EXPECTED
        +---------------+
        +---------------+
        |     \e[0;32;49mbuild\e[0m     |
        +-------+-------+
        | \e[0;32;49mBuild\