# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Command::RetryCommand, type: :command do
  shared_examples_for 'a