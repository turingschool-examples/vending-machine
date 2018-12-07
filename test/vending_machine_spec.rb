require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/vending_machine.rb'
require './lib/vending_slot.rb'
require './lib/product.rb'

class VendingMachineTest < Minitest::Test

  def setup
    @contents_hash = VendingMachine.contents_hash
  end

  def test_it_can_parse_contents_hash
    count = @contents_hash.keys.count
    assert count, 9
  end

  def test_it_can_import_vending_slots
    machine = VendingMachine.new
    machine.import_contents(@contents_hash)

    assert machine.slots.count, 9
    assert machine.slots.first.name, "a1"
    assert machine.slots.first.cost, 100
    assert machine.slots.first.capacity, 10
    assert machine.slots.first.products.count, 4
    assert machine.slots.first.products.first.type, "Snickers"
  end

end