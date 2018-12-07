require 'pry'

class VendingMachine

  def initialize
    @inserted_money = InsertMoney.new
    @coins = []
  end

  def intro
    puts "Hello, please enter a command:
    (c)ontents - Prints the contents of the vending machine.
    (i)nsert money - Takes in coins and prints total money inserted.
    (v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter.
    (p)urchase - Displays a prompt to enter the slot they'd like to purchase."
    initial_choice = user_input_downcase
    start_machine_options(initial_choice)
  end

  def start_machine_options(initial_choice)
    if initial_choice == "c" || initial_choice == "contents"
    elsif initial_choice == "i" || initial_choice == "insert money"
      @inserted_money.start
    elsif initial_choice == "v" || initial_choice == "valid coin values"
    elsif initial_choice == "p" || initial_choice == "purchase"
    else
      if_choice_is_not_an_option
    end
  end

  def insert_money
    inserted_amount = prompt_for_money.to_i
    valid = check_if_valid(inserted_amount)
    if valid
      display_total
      start_machine_options(user_input_downcase)
    else
      puts "Not a valid coin."
      insert_money
    end
  end

  def display_total
    total_cents = @coins.sum
    dollars = total_cents.to_f/100
    puts "Total inserted: $#{dollars}"
  end

  def prompt_for_money
    print "Please insert your money >"
    gets.chomp
  end

  def check_if_valid(amount_inserted)
    valid_coins = [1,5,10,25]
    if valid_coins.include?(amount_inserted)
      @coins << amount_inserted
      return true
    else
      return false
    end
  end

  def if_choice_is_not_an_option
    puts "Please choose either (c)ontents, (i)nsert money, (v)alid coin values, or (p)urchase to move forward."
    new_response = user_input_downcase
    start_machine_options(new_response)
  end

  def user_input_downcase
    print ">"
    gets.chomp.downcase
  end

  VendingMachine.new.intro
end
