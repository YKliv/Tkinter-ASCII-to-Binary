# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Printer::StepPrinter, type: :printer do
  describe '#to_s' do
    subject { described_class.new(steps, pretty: pretty).to_s }

    before do
      allow_any_instance_of(CircleCI::CLI::Response::Action).to receive(:log) { 'action log' }
    end

    let(:steps) do
      [
        CircleCI::CLI::Response::Step.new(
          'build',
          {
            'status' => 'success',
            'actions' => [
              { 'type' => 'build', 'name' => 'Depe