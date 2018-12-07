require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/vending_machine.rb'
require './lib/vending_slot.rb'
require './lib/product.rb'

class VendingSlotTest < Minitest::Test

  def setup
    @hash = VendingMachine.contents_hash
  end

  def test_it_can_create_a_vending_slot
    name = @hash.keys.first
    slot = @hash[name]
    cost = slot["cost"]
    capacity = slot["capacity"]
    vending_slot = VendingSlot.new(name, cost, capacity)
    assert vending_slot.name, "a1"
    assert vending_slot.cost, 100
    assert vending_slot.capacity, 10
  end

  def test_it_can_import_products
    name = @hash.keys.first
    slot = @hash[name]
    cost = slot["cost"]
    capacity = slot["capacity"]
    vending_slot = VendingSlot.new(name, cost, capacity)

    slot_products = slot["contents"]
    products = vending_slot.import_products(slot_products)

    assert vending_slot.products.count, 3
    assert vending_slot.products.first.type, "Snickers"
  end

end