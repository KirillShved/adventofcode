# frozen_string_literal: true

require 'spec_helper'
require './lib/year_2016/day1/solution'

describe Year2016::Day1::Solution do
  describe '#call' do
    subject { described_class.new }

    let(:correct_answer_day1_part1) { 209 }

    it { expect(subject.call).to eq(correct_answer_day1_part1) }
  end
end
