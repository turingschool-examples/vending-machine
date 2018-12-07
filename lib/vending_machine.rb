class VendingMachine

  attr_accessor :slots

  def initialize
    @slots = []
  end

  def self.contents_hash
    file = File.read('./tiny_vending_machine.json')
    hash = JSON.parse(file)
    return hash["contents"].first
  end

  def import_contents(data)
    vending_slots = data.keys
    vending_slots.each do |name|
      @slots << import_slot(name, data)
    end
  end

  def import_slot(name, data)
    cost = data[name]["cost"]
    capacity = data[name]["capacity"]
    vending_slot = VendingSlot.new(name, cost, capacity)
    products = data[name]["contents"]
    vending_slot.import_products(products)
    return vending_slot
  end

end

