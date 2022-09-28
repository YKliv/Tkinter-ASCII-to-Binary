
# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Printer::BuildPrinter, type: :printer do
  describe '#to_s' do
    subject { described_class.new(builds, builds.first.project_name, pretty: pretty).to_s }

    let(:builds) do
      [
        CircleCI::CLI::Response::Build.new(
          {
            'username' => 'unhappychoice',
            'reponame' => 'default_reponame_from_api',
            'status' => 'success',
            'build_num' => 1234,
            'branch' => 'master',
            'author_name' => 'unhappychoice',
            'build_time_millis' => 23_900,
            'start_time' => 100_000,
            'steps' => [
              {
                'status' => 'success',
                'actions' => [
                  { 'type' => 'build', 'name' => 'Build', 'status' => 'success', 'run_time_millis' => 300 }
                ]
              },
              {
                'status' => 'success',
                'actions' => [
                  { 'type' => 'test', 'name' => 'Test', 'status' => 'success', 'run_time_millis' => 22_200 }
                ]
              }
            ]
          }
        ),
        CircleCI::CLI::Response::Build.new(
          {
            'username' => 'unhappychoice',
            'reponame' => 'default_reponame_from_api',
            'status' => 'failed',
            'build_num' => 1236,
            'branch' => 'master',
            'author_name' => 'unhappychoice',
            'build_time_millis' => 9_300,