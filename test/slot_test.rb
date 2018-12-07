require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/json_adapter.rb'
require './lib/slot.rb'

class SlotTest < Minitest::Test

  def test_it_exists
    slot_data = [["a1", {"cost":100, "capacity":10, "contents": [{"type":"Snickers"}, {"type":"Snickers"}, {"type":"Snickers"}, {"type":"Snickers"}]}], [ "a2", {"cost":125, "capacity":8, "contents": [{"type":"Doritos Big Grab"}, {"type":"Doritos Big Grab"}, {"type":"Doritos Big Grab"}, {"type":"Doritos Big Grab"}, {"type":"Doritos Big Grab"}]}]].first
    slot_1 = Slot.new(slot_data)

    assert_instance_of Slot, slot_1
  end

  def test_it_has_attributes
    slot_data = [["a1", {"cost":100, "capacity":10, "contents": [{"type":"Snickers"}, {"type":"Snickers"}, {"type":"Snickers"}, {"type":"Snickers"}]}], [ "a2", {"cost":125, "capacity":8, "contents": [{"type":"Doritos Big Grab"}, {"type":"Doritos Big Grab"}, {"type":"Doritos Big Grab"}, {"type":"Doritos Big Grab"}, {"type":"Doritos Big Grab"}]}]].first
    slot_1 = Slot.new(slot_data)

    assert_equal "a1", slot_1.slot_id
    assert_equal 100, slot_1.cost
    assert_equal 10, slot_1.capacity
    assert_instance_of Array, slot_1.contents
    assert_equal 4, slot_1.contents.count
  end

end
