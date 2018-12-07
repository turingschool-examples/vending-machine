require './lib/machine'
class Money
  attr_reader :contents

  def initialize
    @total = 0
  end

  def total(response = gets.chomp)
    if [1,5,10,25].include? response.to_i
      @total += response.to_i
      puts "Total inserted: #{@total}"
    else
      puts 'Not a valid coin.'
      total
    end
  end

end
