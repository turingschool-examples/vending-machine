
class Position

  def initialize
    @contents = []
  end


  # Loads from back, is that an assumption I can make?
  def add_contents(item)
    @contents << item
  end


  def validate_sale
    can_sell? ? sold : cannot_sell
  end


  def can_sell?
    @contents.count >= 1
  end

  def cannot_sell
    "Sorry. There are no items remaining."
  end

  def sold
    puts "Vending..."
    puts "\n"
    puts "Enjoy your #{ sold_item }!"
  end

  def sold_item
    # This should be mutating the contents
    vend_first.type.capitalize
  end

  def vend_first
    @contents.shift
  end


end
