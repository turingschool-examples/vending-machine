class Item 
  attr_reader :name, 
              :cost

  def initialize(item)
    @name = item[1]["contents"][0]["type"]
    @cost = item[1]["cost"]
  end
end