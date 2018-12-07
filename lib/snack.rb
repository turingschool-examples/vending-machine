class Snack
  attr_reader :name

  def initialize(hash)
    @name = hash[:type]
  end
  
end
