class Money 
  def intialize(value=0)
    @value = value
    @total_amount = []
  end 

  def add_money(currency)
    if currency == 1 || currency == 5 || currency == 10 || currency == 25
    @total_amount << currency
    total_money
    else
      puts "Not a valid coin"
    end 
  end

  def total_money 
    @total_amount.reduce(:+)
    puts "Total inserted: #{@total_amount}"
  end 

end 