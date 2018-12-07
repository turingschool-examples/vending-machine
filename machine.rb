require 'pry'
require 'json'
require './item'

class Machine
	attr_reader :items

	def initialize
		@items = []
	end

	def load
		file = File.read'./tiny_vending_machine.json'
		contents = JSON.parse(file)["contents"]
		contents.each do |key, value|
			binding.pry
			item = Item.new(key, value)
			
			items << new_item
		end	
	end

end