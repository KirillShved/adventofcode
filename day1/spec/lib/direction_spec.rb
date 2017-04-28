require '../../../day1/lib/direction'
require '../../../day1/lib/directions/east'
require '../../../day1/lib/directions/north'
require '../../../day1/lib/directions/south'
require '../../../day1/lib/directions/west'

RSpec.describe Direction do
  shared_examples 'direction directions' do |from:, to:, on:|
    context "for #{from}" do
      subject(:direction) { from }

      it "turns from #{from} to #{to} on #{on}" do
        expect(direction.send(on)).to eq(to)
      end
    end
  end

  include_examples 'direction directions', from: East, to: North, on: :turn_left
  include_examples 'direction directions', from: East, to: South, on: :turn_right

  include_examples 'direction directions', from: North, to: West, on: :turn_left
  include_examples 'direction directions', from: North, to: East, on: :turn_right

  include_examples 'direction directions', from: South, to: East, on: :turn_left
  include_examples 'direction directions', from: South, to: West, on: :turn_right

  include_examples 'direction directions', from: West, to: South, on: :turn_left
  include_examples 'direction directions', from: West, to: North, on: :turn_right
end
