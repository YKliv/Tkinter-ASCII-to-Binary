# frozen_string_literal: true

shared_context 'mock io' do
  let(:io_response_circle_ci_token) { 'circle-ci-token' }
  let(:io_response_project_name) { 'user/project_name_from_io' }
  let(:io_response_build_number) { 1234 }

  before do
    ObjectSpace.each_object(Class).select { |klass| klass < CircleCI::CLI::Command::BaseCommand }.eac