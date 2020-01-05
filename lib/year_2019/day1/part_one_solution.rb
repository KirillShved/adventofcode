# frozen_string_literal: true

require_relative '../constants'

module Year2019
  module Day1
    # Solution to Part One of Day1
    class PartOneSolution
      def initialize; end

      def call
        fuel_array = Constants::Day1::INPUT_ARRAY.map do |value|
          divided_value = value / 3
          divided_value - 2
        end
        fuel_array.sum
      end
    end
  end
end
