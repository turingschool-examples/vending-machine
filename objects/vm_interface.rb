

class VMInterface


  def start
    puts greetings
    # accept input
    # calls next action c / i / v / p
  end

  private

  def greetings
    "Hello, please enter a command:\n
    (c)ontents - Prints the contents of the vending machine.\n
    (i)nsert money - Takes in coins and prints total money inserted.\n
    (v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter.\n
    (p)urchase - Displays a prompt to enter the slot they'd like to purchase."
  end





end
