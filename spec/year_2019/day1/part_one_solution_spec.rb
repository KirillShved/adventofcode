# frozen_string_literal: true

require 'spec_helper'
require './lib/year_2019/day1/part_one_solution'

describe Year2019::Day1::PartOneSolution do
  describe '#call' do
    subject { described_class.new }

    let(:correct_answer) { 3_228_475 }

    it { expect(subject.call).to eq(correct_answer) }
  end
end
