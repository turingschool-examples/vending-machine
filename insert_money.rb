class InsertMoney

  def initialize
    @coins = []
  end

  def display_total
    total_cents = @coins.sum
    dollars = total_cents.to_f/100
    puts "Total inserted: $#{dollars}"
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


  def user_input_downcase
    print ">"
    gets.chomp.downcase
  end
end
