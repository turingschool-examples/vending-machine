
class Runner

  def initialize
    @user_commands = " "
    @coins = 0
    @coins_hash = {
              "1" => "penny",
              "5" => "nickel",
              "10" => "dime",
              "25" => "quarter"
            }
    @machine = VendingMachine.populate
  end

  def user_interface
    puts   "Hello, please enter a command:"
    puts   "(c)ontents - Prints the contents of the vending machine."
    puts   "(i)nsert money - Takes in coins and prints total money inserted."
    puts   "(v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter."
    puts   "(p)urchase - Displays a prompt to enter the slot they'd like to purchase."
    puts   "(q)uit"
    @user_commands = gets.chomps.downcase
  end

  def print_content
    @machine.slots.each do |key, value|
      puts "In the position #{key.to_s} the are #{value.contents.first} and they are #{value.cost} "
    end
  end

  def insert_coin
    puts "There are #{@coins} in the Machine, would you like to insert more"
    @user_commands = gets.chomps.downcase
    u_coins = coins_hash[@user_commands]
    if u_coins
      @coins += @user_commands.to_i
      puts "You have added a #{u_coins}"
      puts "your total is #{@coins}"
    else
      puts "please insert a valid coin"
    end
  end

  def valid_coins
    puts "This is a list of valid coins"
    @coins_hash.each do |key, value|
      puts "#{value}"
    end
  end

  def purchase
    puts 'Please enter the slot'
      @user_commands = gets.chomps.downcase
      slots = @machine.slots[@user_commands]
      snack = slots.content.first
      if slots && (slots.cost < @coins)
        puts "#{snack}"
        snack.delete
      elsif slots.cost > @coins
        puts 'please add more coins'
      else
        puts "that slot do not exist"
      end
  end

end

Runner.new


while  u_i != "q"
  user_interface

  case
    when u_i == "c"
      print_content
    when u_i == "i"
      insert_coin
    when u_i == "v"
      valid_coins
    when u_i == "p"
      purchase
    when u_i == 'q'
      break
    else
  end
end
