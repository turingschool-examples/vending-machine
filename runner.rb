require './lib/user.rb'
require './lib/machine.rb'

#create objects to use and store info
@user = User.new
@machine = Machine.new

puts 'Hello, please enter a command:'
puts '(c)ontents - Prints the contents of the vending machine.'
puts '(i)nsert money - Takes in coins and prints total money inserted.'
puts '(v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter.'
puts "(p)urchase - Displays a prompt to enter the slot they'd like to purchase."
puts '(q) - Quits the vending program'

#ask user for input and wait for response
user_input = gets.chomp

while user_input != 'q' do
  if user_input == 'c'

    puts @machine.contents

  elsif user_input == 'i'

    p 'Please insert a coin, ex: 1, 5, 10, 25'
    insert_input = gets.chomp
    @user.insert_coin(insert_input)

  elsif user_input == 'v'

    puts 'Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter.'

  elsif user_input == 'p'

    puts 'What item would you like to purchase?'
    puts "ex: 'a1' or 'd8'"
    purchase_input = gets.chomp
    @user.purchase(purchase_input)
    user_input = 'q'
  else
    puts 'Not a valid input!'
  end
  puts 'Hello, please enter a command:'
  puts '(c)ontents - Prints the contents of the vending machine.'
  puts '(i)nsert money - Takes in coins and prints total money inserted.'
  puts '(v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter.'
  puts "(p)urchase - Displays a prompt to enter the slot they'd like to purchase."
  puts '(q) - Quits the vending program'
  user_input = gets.chomp
end
