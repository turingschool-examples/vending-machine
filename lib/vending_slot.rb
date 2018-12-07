class VendingSlot

  attr_reader :name, :cost, :capacity, :products

  def initialize(name, cost, capacity)
    @name = name
    @cost = cost
    @capacity = capacity
    @products = []
  end

  def import_products(products_array)
    products_array.each do |product|
      @products << Product.new(product["type"])
    end
  end
  
end