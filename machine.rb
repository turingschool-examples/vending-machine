class Machine 
  def intialize(data)
    @data = data 
  end 

  def display_contents 
    get_json[:contents].each do |content|

  end 

  def get_json
    file = File.read("tiny_vending_machine.json")
    data_hash = JSON.parse(file)
  end 


end 
