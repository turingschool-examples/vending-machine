class Item
	attr_reader :location,
							:price,
							:capacity,
							:contents


	def initialize(location, data)
		@location = location
		@price = data[@location]['cost'] / 100.00
		@capacity = data[@location]['capacity']
		@contents = data[@location]['contents']
	end

	def available
		@contents.count
	end


end