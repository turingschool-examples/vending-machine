require 'json'


class Contents
attr_reader :json_load

  def initialize
    require "pry"; binding.pry

  end

  def json_load
    file = File.read('tiny_vending_machine.json')
    data_hash = JSON.parse(file)
    a1 = data_hash["contents"].first["a1"]["contents"].first["type"]

    arrays = data_hash["contents"].first.map do |a|
      a.last["contents"]
    end

    cleaned = arrays.reject(&:empty?)

    cleaned.map do |c|
      c.first["type"]
    end

    #THIS GIVES AN ARRAY OF ALL ITEM TYPES IN THE MACHINE
  end

end


# require 'json'
#
# data = JSON.parse(tiny_vending_machine.json)
# residents = data['Resident'].map { |rd| Resident.new(rd['phone'], rd['addr']) }
# {
#   "Resident": [
#     {
#       "phone": "12345",
#       "addr":  "xxxxx"
#     }, {
#       "phone": "12345",
#       "addr": "xxxxx"
#     }, {
#       "phone": "12345",
#       "addr": "xxxxx"
#     }
#   ]
# }
#
# class Resident
#   attr_accessor :phone, :addr
#
#   def initialize(phone, addr)
#       @phone = phone
#       @addr = addr
#   end
# end
