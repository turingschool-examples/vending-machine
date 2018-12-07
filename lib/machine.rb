require 'json'

class Machine
  attr_reader :contents
  def initialize
    file = File.read('./tiny_vending_machine.json')
    @contents = JSON.parse(file)
  end
end
