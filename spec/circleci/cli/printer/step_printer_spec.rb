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
              { 'type' => 'build', 'name' => 'Dependency', 'status' => 'ok', 'run_time_millis' => 1200 },
              { 'type' => 'build', 'name' => 'Build', 'status' => 'canceled', 'run_time_millis' => 25_000 }
            ]
          }
        ),
        CircleCI::CLI::Response::Step.new(
          'test',
          {
            'status' => 'success',
            'actions' => [
              { 'type' => 'test', 'name' => 'Test', 'status' => 'failed', 'run_time_millis' => 1_200 }
            ]
          }
        ),
        CircleCI::CLI::Response::Step.new(
          'deploy',
          {
            'status' => 'success',
            'actions' => 