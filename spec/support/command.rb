# frozen_string_literal: true

shared_examples_for 'a command asks project name' do
  let(:expected_project_name_output) do
    <<~EXPECTED
      +-------------------------------------------+
      |                 \e[0;32;49mProjects\e[0m                  |
      +---------------+---------------------------+
      | User name     | Repository name           |
      +--------