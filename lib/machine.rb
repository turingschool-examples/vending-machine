require 'json'
require 'pry'
require './lib/snack'
require './lib/money'

class Machine
  attr_reader :contents
  def initialize
    file = File.read('./tiny_vending_machine.json')
    @contents = JSON.parse(file)
    @money = Money.new
  end

  def intro(response = gets.chomp)
    if response == 'c'
      snacks = Snack.new(@contents)
      snacks.list
      message
      intro
    elsif response =='i'
      puts 'Please insert your money'
      @money.total
      message
      intro
    elsif response == 'v'
      puts 'Accepts coins of 1,5,10,25 Cents'
      message
      intro
    elsif response == 'p'
      puts "Please enter the slot of the item you'd like to vend"
      message
      intro
    elsif response == 'q'
    else
      puts 'Please enter a valid response'
      message
      intro
    end
  end

  def message
    puts 'Hello, please enter a command:'
    puts '(c)ontents'
    puts '(i)nsert money'
    puts '(v)alid coin values'
    puts '(p)urchase'
    puts '(q)uit'
  end
end


machine = Machine.new
machine.message
machine.intro
