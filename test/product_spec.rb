require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/vending_machine.rb'
require './lib/product.rb'

class ProductTest < Minitest::Test

  def setup
    @hash = VendingMachine.contents_hash
  end

  def test_it_can_create_a_product
    type = @hash["a1"]["contents"].first["type"]
    product = Product.new(type)
    assert product.type, "Snickers"
  end


end