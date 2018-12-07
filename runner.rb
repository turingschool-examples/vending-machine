require './machine.rb'
require './item.rb'

machine = Machine.new
machine.load

puts "Hello, please enter a command:"
puts  "(c)ontents - Prints the contents of the vending machine."
puts "(i)nsert money - Takes in coins and prints total money inserted."
puts "(v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter."
puts "(p)urchase - Displays a prompt to enter the slot they'd like to purchase."

response = gets.chomp

if response == "c"
	machine.items.each do |item|
		 puts "#{item.location}: #{item.contents[0]['type']}, #{item.available} available, $#{item.price} each"  
	end
elsif response == "i"
	puts "Please insert your money >"
end