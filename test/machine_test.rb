require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/json_adapter.rb'
require './lib/slot.rb'
require './lib/machine.rb'

class MachineTest < Minitest::Test

  def test_it_exists
    machine = Machine.new

    assert_instance_of Machine, machine
  end

  def test_starts_with_no_slots
    machine = Machine.new

    assert_equal "There are no items in the machine!", machine.slots
  end

  def test_it_can_generate_slots
    machine = Machine.new

    assert_equal 
  end

end
