# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Runner do
  describe '#project' do
    subject { described_class.project }

    context 'when git repository has a https github remote' do
      let(:rugged_response_remote_url) { 'https://github.com/user/repository.git' }
      it 'extracts the reponame from the origin url' do
        expect(subject).to eq('user/repository')
      end
    end

    context 'when git repository has a github remote' do
      let(:rugged_response_remote_url) { 'git@github.com:user/repository.git' }
      it 'extracts the reponame from the origin url' do
        expect(s