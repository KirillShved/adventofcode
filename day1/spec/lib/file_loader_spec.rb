require '../../../day1/spec/spec_helper'
require '../../../day1/lib/path'

RSpec.describe Path do
  describe '#directions' do
    let(:input_file) { File.expand_path('../fixtures/input', File.dirname(__FILE__)) }
    let(:expected_output) { ['L3', 'R2', 'L5', 'R1', 'L1', 'L2'] }
    subject(:path) { described_class.new(input_file) }

    it 'should parse file' do
      expect(subject.raw_moves).to match_array(expected_output)
    end
  end
end
