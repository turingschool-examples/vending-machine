require 'pry'
require './insert_money'
require 'json'

class VendingMachine

  def initialize
    @inserted_money = InsertMoney.new
    @contents = get_json
  end

  def get_json
    file = File.read('./tiny_vending_machine.json')
    JSON.parse(file)
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
      insert_money
    elsif initial_choice == "v" || initial_choice == "valid coin values"
    elsif initial_choice == "p" || initial_choice == "purchase"
      purchase
    else
      if_choice_is_not_an_option
    end
  end

  def purchase
    puts "Please enter the slot of the item you'd like to vend"
    inputed_slot = user_input_downcase
    slot = check_slot(inputed_slot)
    if slot
      check_availability(inputed_slot)
    end
  end

  def check_availability(inputed_slot)
    contents = @contents["contents"].first[inputed_slot]["contents"]
    price = @contents["contents"].first[inputed_slot]["cost"]
    if contents == []
      puts "Sorry. There are no items remaining."
      start_machine_options(user_input_downcase)
    else
      if @inserted_money.coins >= price
        purchase_item(inputed_slot,price)
      else
        puts "Insufficient funds. Please (i)nsert more money."
        start_machine_options(user_input_downcase)
      end
    end
  end

  def purchase_item(slot, price)
    @inserted_money.coins -= price
    @contents["contents"].first[inputed_slot]["contents"].drop(1)
  end

  def check_slot(input)
    valid_slots = ["a1","a2","a3","b1","b2","b3","c1","c2","c3"]
    if valid_slots.include?(input)
      return true
    else
      puts "Not a valide slot"
      start_machine_options(user_input_downcase)
    end
  end

  def insert_money
    inserted_amount = prompt_for_money.to_i
    valid = @inserted_money.check_if_valid(inserted_amount)
    if valid
      @inserted_money.display_total
      start_machine_options(user_input_downcase)
    else
      puts "Not a valid coin."
      insert_money
    end
  end

  def prompt_for_money
    print "Please insert your money >"
    gets.chomp
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
