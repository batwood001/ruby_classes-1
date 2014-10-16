class Car
	
	def initialize
		@tankcapacity = 10.0
		@gasprice = 3.5
		@mpg = 20.0
		@distance = 0.0
		@fuel = @tankcapacity
		@dist_left = @fuel * @mpg
		puts "The initialize method is running automagically"
	end

	def get_info
		puts "I'm a car! I've driven #{@distance} miles and have #{@fuel} gallons left."
	end

	def drive(miles)
		if miles <= @dist_left
			@distance += miles
			@fuel -= miles/@mpg
			@dist_left -= miles
			puts "You drove #{miles} miles and you have #{@fuel} gallons left."
		else
			@distance = @dist_left
			@fuel = 0
			@dist_left = 0
			puts "You drove #{@dist_left} miles and ran out of gas!"
		end
	end

	def fuel_up
		cost = (@tankcapacity - @fuel) * @gasprice
		puts "It cost #{cost} to fill up the tank. The tank is now full."
		@fuel = @tankcapacity
	end

end