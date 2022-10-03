# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Printer::ProjectPrinter, type: :printer do
  describe '#to_s' do
    subject { described_class.new(projects, pret