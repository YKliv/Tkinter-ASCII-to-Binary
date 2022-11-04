# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Printer::StepPrinter, type: :printer do
  describe '#to_s' do
    subject { described_class.new(steps, pretty: pretty).to_s }

    before do
 