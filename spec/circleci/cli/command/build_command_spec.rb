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
        | \e[0;32;49mBuild\e[0m | 00:01 |
        +-------+-------+
        |     \e[0;32;49mtest\e[0m      |
        +-------+-------+
        | \e[0;32;49mTest\e[0m  | 00:01 |
        +-------+-------+
      EXPECTED
    end

    it 'should show build information' do
      allow(CircleCI::CLI::Command::BuildCommand).to receive(:say) { nil }
      expect(CircleCI::CLI::Command::BuildCommand).to receive(:say).with(expected_output.strip)
      CircleCI::CLI::Command::BuildCommand.run(options)
    end
  end

  context 'with no input' do
    let(:options) { OpenStruct.new(project: nil, build: nil, pretty: true) }

    it_behaves_like 'a command ask