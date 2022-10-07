# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Printer::ProjectPrinter, type: :printer do
  describe '#to_s' do
    subject { described_class.new(projects, pretty: pretty).to_s }

    let(:projects) do
      [
        CircleCI::CLI::Response::Project.new({ 'username' => 'user1', 'reponame' => 'repository1' }),
        CircleCI::CLI::Response::Project.new({ 'username' => 'user2', 'reponame' => 'repository2' }),
        CircleCI::CLI::Response::Project.new({ 'username' => 'user1', 'reponame' => 'repository3' }),
        CircleCI::CLI::Response::Project.new({ 'username' => 'user2', 'reponame' => 'repository4