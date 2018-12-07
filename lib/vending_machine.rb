require 'json'
require './lib/slot'

class VendingMachine
  attr_reader :slots

  def initialize(hash)
    @slots = hash
  end

  def self.populate

    content = File.read('./data/tiny_vending_machine.json')
    json_hash = JSON.parse(content, symbolize_names: true)
    new_hash = Hash.new(0)
    json_hash[:contents].first.each do |key, values|
      new_hash[key] = Slot.new(key, values)
    end
    
    VendingMachine.new(new_hash)
  end
end
