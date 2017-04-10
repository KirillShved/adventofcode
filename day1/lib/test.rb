class Test
  attr_reader :a

  def initialize
    @a = 1
  end

  def mul
    a * 2
  end
end

puts Test.new.mul