require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/json_adapter.rb'

class JsonAdapterTest < Minitest::Test

  def test_it_exists
    json_adapter = JsonAdapter.new

    assert_instance_of JsonAdapter, json_adapter
  end

  def test_it_can_load_items
    item_data = JsonAdapter.new.load_items

    assert_instance_of Hash, item_data
  end

end
