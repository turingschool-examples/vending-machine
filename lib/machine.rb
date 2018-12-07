require 'json'
require 'pry'
require './lib/snack'

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
    elsif response == 'v'
      puts 'Accepts coins of 1,5,10,25 Cents' 
    elsif response == 'p'
    else
      puts 'please enter a valid response'
      intro
    end
  end
end

machine = Machine.new
puts 'Hello, please enter a command:'
puts '(c)ontents - Prints the contents of the vending machine.'
puts '(i)nsert money - Takes in coins and prints total money inserted.'
puts '(v)alid coin values'
puts "(p)urchase - Displays a prompt to enter the slot they'd like to purchase."

machine.intro
