# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Command::RetryCommand, type: :command do
  shared_examples_for 'a command retries build' do
    it 'should retry build' do
      allow(CircleCI::CLI::Command::RetryCommand).to receive(:say) { nil }
      expect(CircleCI::CLI::