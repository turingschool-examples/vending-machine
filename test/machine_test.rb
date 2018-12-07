require 'minitest/autorun'
require 'minitest/pride'
require './lib/machine'
require 'pry'

class MachineTest < Minitest::Test
  def test_it_can_get_a_section
  machine = Machine.new

  assert_equal "U.S.", story.section(1)
  assert_equal "Technology", story.section(7)
end
end
