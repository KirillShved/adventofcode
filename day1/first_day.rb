require_relative '../directions/file_loader'

class Test
  NORTH = 'North'.freeze
  WEST = 'West'.freeze
  SOUTH = 'South'.freeze
  EAST = 'East'.freeze

  STR = ''.freeze

  attr_accessor :x, :y, :see

  def initialize
    @x = 0
    @y = 0
    @direction = 0
    @step_length = 0
    @see = NORTH
   end


  def run
    moves = STR.split(/,\s*/)
                # .map {|el| Move.new(el) }

    moves.each do |step|
      @direction = step[0]
      @step_length = step[1..-1].to_i
      make_step
    end
    puts "Result: #{x.abs + y.abs} steps."
  end

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
    if @direction == 'L'
      @x -= @step_length
      @see = WEST
    elsif @direction == 'R'
      @x += @step_length
      @see = EAST
    end
  end

  def west
    if @direction == 'L'
      @y -= @step_length
      @see = SOUTH
    elsif @direction == 'R'
      @y += @step_length
      @see = NORTH
    end
  end

  def south
    if @direction == 'L'
      @x += @step_length
      @see = EAST
    elsif @direction == 'R'
      @x -= @step_length
      @see = WEST
    end
  end

  def east
    if @direction == 'L'
      @y += @step_length
      @see = NORTH
    elsif @direction == 'R'
      @y -= @step_length
      @see = SOUTH
    end
  end
end

Test.new.run

dima = Name.new("Dima")

puts dima.first_method

#
# class C
#   def initialize(string)
#     @string = string
#   end
#
#   def call
#     parserd = Parser.new(string).parse
#     parsed
#   end
#
#   class Parser
#     def initialize(string)
#       @string = string
#     end
#
#     def parse
#       string.parser
#     end
#
#     def asdf
#     end
#
#     def asdfsaf
#     end
#   end
# end
#
# module M
#   def five
#     5
#   end
#
#   def two
#     2
#   end
# end
#
# module M2
#   def five
#     42
#   end
# end
#
# class C
#   include M  # add instance methods
#   include M2 # add instance methods
#
#   def call
#     five * two
#   end
# end
