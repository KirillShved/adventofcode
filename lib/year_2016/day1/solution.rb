# frozen_string_literal: true

module Year2016
  module Day1
    # Solution for Day1
    class Solution
      NORTH = 'North'
      WEST = 'West'
      SOUTH = 'South'
      EAST = 'East'
      LEFT = 'L'
      RIGHT = 'R'

      STR = %w[
        L3 R2 L5 R1 L1 L2 L2 R1 R5 R1 L1 L2 R2 R4 L4 L3 L3 R5 L1 R3 L5 L2 R4 L5 R4 R2 L2 L1 R1 L3 L3 R2 R1 L4 L1 L1 R4
        R5 R1 L2 L1 R188 R4 L3 R54 L4 R4 R74 R2 L4 R185 R1 R3 R5 L2 L3 R1 L1 L3 R3 R2 L3 L4 R1 L3 L5 L2 R2 L1 R2 R1 L4
        R5 R4 L5 L5 L4 R5 R4 L5 L3 R4 R1 L5 L4 L3 R5 L5 L2 L4 R4 R4 R2 L1 L3 L2 R5 R4 L5 R1 R2 R5 L2 R4 R5 L2 L3 R3 L4
        R3 L2 R1 R4 L5 R1 L5 L3 R4 L2 L2 L5 L5 R5 R2 L5 R1 L3 L2 L2 R3 L3 L4 R2 R3 L1 R2 L5 L3 R4 L4 R4 R3 L3 R1 L3 R5
        L5 R1 R5 R3 L1
      ].join(', ')

      def initialize
        @x = 0
        @y = 0
        @direction = 0
        @step_length = 0
        @see = NORTH
      end

      def call
        array = STR.split(/,\s*/)
        array.each do |step|
          @direction = step[0]
          @step_length = step[1..-1].to_i
          make_step
        end

        x.abs + y.abs
      end

      private

      attr_accessor :x, :y, :direction, :step_length, :see

      def make_step
        if see == NORTH
          north
        elsif see == WEST
          west
        elsif see == SOUTH
          south
        elsif see == EAST
          east
        end
      end

      def north
        if direction == LEFT
          @x -= step_length
          @see = WEST
        elsif direction == RIGHT
          @x += step_length
          @see = EAST
        end
      end

      def west
        if direction == LEFT
          @y -= step_length
          @see = SOUTH
        elsif direction == RIGHT
          @y += step_length
          @see = NORTH
        end
      end

      def south
        if direction == LEFT
          @x += step_length
          @see = EAST
        elsif direction == RIGHT
          @x -= step_length
          @see = WEST
        end
      end

      def east
        if direction == LEFT
          @y += step_length
          @see = NORTH
        elsif direction == RIGHT
          @y -= step_length
          @see = SOUTH
        end
      end
    end
  end
end
