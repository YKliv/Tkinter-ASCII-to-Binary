
# frozen_string_literal: true

require 'spec_helper'

describe CircleCI::CLI::Networking::CircleCIPusherClient, type: :networking do
  describe '#connect' do
    subject { described_class.new.connect }

    let(:mock_socket) { double('socket') }

    it 'connects to socket' do
      allow(PusherClient).to receive_message_chain(:logger, :debug)
      allow_any_instance_of(Faraday).to receive(:post) { '' }
      allow_any_instance_of(described_class).to receive(:socket) { mock_socket }