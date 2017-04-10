require 'spec_helper'

RSpec.describe Test do
  describe '#mul' do
    subject(:test) { described_class.new }

    it 'multiplies by 2' do
      expect(test.mul).to eq(2)
    end
  end
end
