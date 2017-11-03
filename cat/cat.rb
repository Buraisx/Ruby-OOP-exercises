class Cat
	def initialize(cname,preferred_food,meal_time)
		@cname = cname 
		@preferred_food = preferred_food 
		@meal_time = meal_time
	end
	# meal time checker.  
	def eats_at
		# if in your 24hr format, time is greater than 12, covert to 12 hour
		if @meal_time >= 12
			if @meal_time > 12
				@meal_time = @meal_time - 12
			end
			return "#{@meal_time} PM"
		else
			# if you are 0, changed to 12 AM
			if @meal_time == 0
				@meal_time = 12
			end 
			return "#{@meal_time} AM"
		end
	end

	def meow
		return "MEOW MEOW MY NAME IS #{@cname} AND I EAT #{@preferred_food} AT #{eats_at}"
	end
end