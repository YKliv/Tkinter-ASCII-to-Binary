# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Command::BuildsCommand, type: :command do
  shared_examples_for 'a command show builds information' do
    let(:expected_output) do
      <<~EXPECTED
        +--------------------------------------------------------------------+
        |             \e[0;32;49mRecent Builds / #{project_name}\e[0m              |
        +--------+---------+--------+--------+--------+----------+-----------+
        | Number | Status  | Branch | Author | Commit | Duration | StartTime |
        +--------+---------+--------+--------+--------+----------+-----------+
        | 1234   | \e[0;32;49msuccess\e[0m | \e[0;32;49mmaster\e[0m | user   | Commit | 00:01    | 100000    |
        +--------+---------+--------+--------+--------+----------+-----------