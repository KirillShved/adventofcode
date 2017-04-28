class Test
  attr_reader :a

  def initialize
    @a = 1
  end

  def mul
    a * 2
  end
end
#
# puts Test.new.mul
# class People
#
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
#
#   def wake_up
#     puts "#{name} is waking up!"
#   end
#
#   def say_hello
#     puts "#{name} is saying Hello to mom!"
#   end
# end
#
# dima = People.new("Dima")
#
# %i(wake_up say_hello).each do |action|
#   dima.__send__(action)
#   sleep 0.15
# end
require 'benchmark'

class Laptop
  ROW = 20

  attr_accessor :name, :cpu, :hdd, :price

  def initialize(name, cpu, hdd, price)
    @name = name
    @cpu = cpu
    @hdd = hdd
    @price = price
  end

  def to_s
    "#{name.center(ROW)} | #{cpu.center(ROW)} | #{hdd.center(ROW)} | #{price.center(ROW)}"
  end
end

laptops = []

laptops << Laptop.new('MacBook', '2.7 Intel I3879', '128 SSD', '1000$')
laptops << Laptop.new('Vintage', 'x8086', '8MB HHD 1200 rpm', '1100$')

puts laptops
