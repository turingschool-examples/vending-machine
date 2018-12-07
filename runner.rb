require_relative "money"

puts "Hello, please enter a command:"
puts "(c)ontents - Prints the contents of the vending machine."
puts "(i)nsert money - Takes in coins and prints total money inserted."
puts "(v)alid coin values - Prints the valid coins inputs: \n   Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter."
puts "(p)urchase - Displays a prompt to enter the slot they'd like to purchase."

$choice = gets.chomp

def choice_selection 
  if $choice == "i"
    money_1 = Money.new
    puts "Please insert your money"
    amount = gets.chomp
    money_1.add_money(amount)
  end 
end 

puts choice_selection 