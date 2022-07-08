# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Command::BuildWatcher do
  let(:build) do
    CircleCI::CLI::Response::Build.new(
      {
        'username' 