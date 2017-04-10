# frozen_string_literal: true

require 'spec_helper'

RSpec.describe AdventOfCode::Year2016::Day1::Solution do
  describe '#call' do
    subject { described_class.new }

    let(:step_count) { 209 }

    it 'return correct count of steps' do
      expect(subject.call).to eq(step_count)
    end
  end
end
