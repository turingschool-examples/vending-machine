class JsonAdapter

  def load_items
    JSON.parse(File.read('./tiny_vending_machine.json'))["contents"].first.to_a
  end

end
