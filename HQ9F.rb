# HQ9F.rb

require 'pry'

def h
  puts 'Hello World!'
end

# HQ9F class with two methods (one class and one instance)
class HQ9F

  def initialize
    @accumulator = 0
  end

  attr_reader :accumulator

  # def accumulator
  #   @accumulator
  # end

  def self._99(x = 99)
    until x == 1
      print '#{x} bottles of beer on the wall, #{x} bottles of beer.'
      print ' Take one down, pass it around, '
      puts '#{x - 1} bottles of beer on the wall.'
      x -= 1
    end
    print '#{x} bottle of beer on the wall, #{x} bottle of beer.'
    print ' Take one down, pass it around, '
    puts '#{x - 1} bottles of beer on the wall.'
    puts 'Oh, no! Who drank all the beer?!'
  end

  def +
    @accumulator += 1
  end
end

HQ9F._99(99)

hq9f = HQ9F.new

hq9f.+ # This brings an error in Rubocop because it is used in a void context.

puts hq9f.accumulator
