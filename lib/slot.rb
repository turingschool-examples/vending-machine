require './lib/snack'
class Slot
  attr_reader :key,
              :cost,
              :capacity,
              :contents

  def initialize(key, data)
    @key      = key
    @cost     = data[:cost]
    @capacity = data[:capacity]
    @contents = content_objects(data[:contents])

  end

  def content_objects(array)
    array.map do |obj|
      Snack.new(obj)
    end
  end
end
