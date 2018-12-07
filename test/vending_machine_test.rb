gem 'minitest', '~> 5.2'
require 'pry'
require "json"
require 'minitest/autorun'
require 'minitest/pride'
require './lib/vending_machine'
require './lib/item'

# require_relative "./data/tiny_vending_machine.json"

class VendingMachineTest < Minitest::Test

  def setup 
    @items = []
      @data = JSON.parse(File.read('./data/tiny_vending_machine.json'))
       
      @data["contents"][0].each do |item|
        @items << Item.new(item)
        binding.pry
      end
    @vm = VendingMachine.new()
  end

  def test_it_exists 
    assert_instance_of VendingMachine, @vm
  end

  def test_it_has_container
    expected = {}
    assert_equal expected, @vm.items
  end

  def test_it_can_load_machine 
    @vm.load_items
    assert_equal 9, @vm.items.count
  end

end