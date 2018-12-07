require 'json'
require 'pry'
require './lib/snack'
require './lib/money'

class Machine
  attr_reader :contents
  def initialize
    file = File.read('./tiny_vending_machine.json')
    @contents = JSON.parse(file)
  end

  def intro(response = gets.chomp)
    if response == 'c'
      snacks = Snack.new(@contents)
      snacks.list
    elsif response =='i'
      puts 'Please insert your money'
      money = Money.new
      money.total
    elsif response == 'v'
      puts 'Accepts coins of 1,5,10,25 Cents'
    elsif response == 'p'
      puts "Please enter the slot of the item you'd like to vend"
    else
      puts 'please enter a valid response'
      intro
    end
  end
end

machine = Machine.new
puts 'Hello, please enter a command:'
puts '(c)ontents'
puts '(i)nsert money'
puts '(v)alid coin values'
puts "(p)urchase"

machine.intro
