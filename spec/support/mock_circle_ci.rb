# frozen_string_literal: true

shared_context 'mock circle ci response' do
  let(:circleci_response_project_name) { 'user/project_name_from_api' }
  let(:account_hash) { { 'name' => 'account name' } }
  let(:build_hash) do
    {
    