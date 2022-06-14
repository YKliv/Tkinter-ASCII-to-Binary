# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Command::CancelCommand, type: :command do
  shared_examples_for 'a command cancels build' do
    let(:expected_output) { 'build user/project_name_from_api 1234 is canceled.' }

    it 'should cancel build' do
      allow(CircleCI::CLI::Command::CancelCommand).to receive(:say) { nil }
      expect(CircleCI::CLI::Command: