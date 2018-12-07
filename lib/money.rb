class Money
  attr_reader :contents

  def initialize(data)
    @contents = data['contents']
    @total = 0
  end

  def total(response = gets.chomp)
    if [1,5,10,25].includes? response.to_i
      @total += response.to_i
      puts "Total inserted: #{@total}"
    else
      puts 'Not a valid coin.'
      total
    end
  end

end
