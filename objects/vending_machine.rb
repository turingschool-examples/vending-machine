requuire_relative 'vm_interface'



class VendingMachine


  def initialize
    @interface = VMInterface.new

    @orders         = []
    @inserted_coins = []
    @positions = positions
  end






  def insert_a_coin(value)
    coins[value] ?  add_coin : return (puts "Not a valid coin")
    puts inserted_value
  end

  def add_coin(value)
    @inserted_coins << value
  end


  # More like:
   # - create order
   # AND
   # - add valid order
    # def new_order(order)
    #   @orders << order
    # end


  private

  def inserted_value
    "Total inserted: #{ total }"
  end

  def total
    @inserted_coins.sum
  end


  def coins
    {
      1  => 'Penny',
      5  => 'Nickel',
      10 => 'Dime',
      25 => 'Quarter'
    }
  end


  def unstaged_stock
    JSON.parse(File.read("tiny_vending_machine.json"))
  end

  def stock_positions

  end


  # ORDER OF ITEMS AT A GIVEN POSITION MATTERS
  # BUT what if we want to know how many of a given item
  # are stocked anywhere in the machine
  def positions
    {
      # THIS will create a new object every time?
      # does this fix it?
      a1: @a1 ||= Position.new
    }
  end




end
