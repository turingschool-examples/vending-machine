require './lib/json_adapter.rb'
require './lib/slot.rb'

class Machine

  def initialize
    @slots = []
  end

  def generate_slots
    items_data = JsonAdapter.new.load_items
    @slots = items_data.map do |item_data|
      Slot.new(item_data)
    end
  end

  def slots
    if @slots.first != nil
      @slots
    else
      "There are no items in the machine!"
    end
  end

end
