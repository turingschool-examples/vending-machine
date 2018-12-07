class Snack
  attr_reader :contents

  def initialize(data)
    @contents = data['contents']
  end

  def list_contents
    snacks = @contents.first
    snack_list = []
    snacks.map do |location, snack|
      snack_list << snack['contents']
    end
    snack_list

  end
end
