class Snack
  attr_reader :contents

  def initialize(data)
    @contents = data['contents']
  end

  def list
    snacks = @contents.first
    snacks.map do |snack|
      snack[1]['contents'][0]['type']
    end
  end
end
