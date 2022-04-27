# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Command::BrowseCommand, type: :command do
  shared_examples_for 'a command opens browser' do
    it 'should open browser' do
      allow(CircleCI::CLI::Command::BrowseCommand).to receive(:say)
      expect(Launchy).to receive(:open).with(expected_url)
      CircleCI::CLI::Command::BrowseCommand.run(options)
    end
  end

  context 'with no input' do
    let(:options) { OpenStruct.new(project: nil, build: nil) }
    l