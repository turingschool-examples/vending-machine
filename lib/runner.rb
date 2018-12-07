
class Runner

  def initialize
    @user_commands = " "
    @coins = 0
    @coins = {
              "1" => "penny",
              "5" => "nickel",
              "10" => "dime",
              "25" => "quarter"
            }
  end

  def user_interface
    puts   "Hello, please enter a command:"
    puts   "(c)ontents - Prints the contents of the vending machine."
    puts   "(i)nsert money - Takes in coins and prints total money inserted."
    puts   "(v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter."
    puts   "(p)urchase - Displays a prompt to enter the slot they'd like to purchase."
    puts   "(q)uit"
    @user_commands = gets.chomps.low
  end

  def print_content

  end

end

Runner.new
u_i = @user_comands.downcase

while  u_i != "q"
  user_interface

  case
    when u_i == "c"
      print_content
    when u_i == "i"

    when u_i == "v"

    when u_i == "p"

    else
  end
end
