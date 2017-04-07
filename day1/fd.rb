class Test
  NORTH = 'North'.freeze
  WEST = 'West'.freeze
  SOUTH = 'South'.freeze
  EAST = 'East'.freeze

  STR = 'L3, R2, L5, R1, L1, L2, L2, R1, R5, R1, L1, L2, R2, R4, L4, L3, L3, R5,
         L1, R3, L5, L2, R4, L5, R4, R2, L2, L1, R1, L3, L3, R2, R1, L4, L1, L1,
         R4, R5, R1, L2, L1, R188, R4, L3, R54, L4, R4, R74, R2, L4, R185, R1,
         R3, R5, L2, L3, R1, L1, L3, R3, R2, L3, L4, R1, L3, L5, L2, R2, L1, R2,
         R1, L4, R5, R4, L5, L5, L4, R5, R4, L5, L3, R4, R1, L5, L4, L3, R5, L5,
         L2, L4, R4, R4, R2, L1, L3, L2, R5, R4, L5, R1, R2, R5, L2, R4, R5, L2,
         L3, R3, L4, R3, L2, R1, R4, L5, R1, L5, L3, R4, L2, L2, L5, L5, R5, R2,
         L5, R1, L3, L2, L2, R3, L3, L4, R2, R3, L1, R2, L5, L3, R4, L4, R4, R3,
         L3, R1, L3, R5, L5, R1, R5, R3, L1'.freeze

  attr_accessor :x, :y, :see

  def initialize
    @x = 0
    @y = 0
    @see = NORTH
  end

  def run
    array = STR.split(/,\s*/)

    array.each do |step|
      direction = step[0]
      step_length = step[1..-1].to_i
      make_step(direction, step_length)
    end
    puts x, y, see
  end

  def make_step(direction, step_length)
    if see == NORTH && direction == 'L' # North
      self.x -= step_length
      self.see = WEST
    elsif see == NORTH && direction == 'R'
      self.x += step_length
      self.see = EAST
    elsif see == WEST && direction == 'L' # West
      self.y -= step_length
      self.see = SOUTH
    elsif see == WEST && direction == 'R'
      self.y += step_length
      self.see = NORTH
    elsif see == SOUTH && direction == 'L' # South
      self.x += step_length
      self.see = EAST
    elsif see == SOUTH && direction == 'R'
      self.x -= step_length
      self.see = WEST
    elsif see == EAST && direction == 'L' # East
      self.y += step_length
      self.see = NORTH
    elsif see == EAST && direction == 'R'
      self.y -= step_length
      self.see = SOUTH
    end
  end
end

Test.new.run