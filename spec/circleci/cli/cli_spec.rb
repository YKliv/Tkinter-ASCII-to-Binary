# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Runner do
  describe '#project' do
    subject { described_class.project }

    context 'when git repository has a https github remote' do
      let(