class Slot

  attr_reader :slot_id,
              :cost,
              :capacity,
              :contents

  def initialize(slot_data)
    @slot_id  = slot_data[0]
    @cost     = slot_data[1]["cost"]
    @capacity = slot_data[1]["capacity"]
    @contents = slot_data[1]["contents"]
  end

end
