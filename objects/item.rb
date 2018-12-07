

# "a3"=>
#    {"cost"=>75,
#     "capacity"=>10,
#     "contents"=>
#      [{"type"=>"Popeye's Candy Cigarrettes"},
#       {"type"=>"Popeye's Candy Cigarrettes"},
#       {"type"=>"Popeye's Candy Cigarrettes"},
#       {"type"=>"Popeye's Candy Cigarrettes"},
#       {"type"=>"Popeye's Candy Cigarrettes"},
#       {"type"=>"Popeye's Candy Cigarrettes"}]},



# Can have item (nominal data?) &
          # - vending_machine_item
          # OR
          # - vending_machine_position



class Item

  attr_reader :type

  def initialize(type)
    @type = type
  end


end
