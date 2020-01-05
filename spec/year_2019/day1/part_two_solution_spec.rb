# frozen_string_literal: true

require 'spec_helper'
require './lib/year_2019/day1/part_two_solution'

describe Year2019::Day1::PartTwoSolution do
  describe '#call' do
    subject { described_class.new }

    it { expect(subject.call).to be_nil }
  end
end
