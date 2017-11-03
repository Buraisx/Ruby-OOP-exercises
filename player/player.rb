class Player
	def initialize
		@gold_coins = 0
		@health_points = 10
		@lives = 5
	end

	def display_stats
		return "Gold: #{@gold_coins}/ Health: #{@health_points}/ Lives: #{@lives}"
	end
	def level_up
		@lives = @lives +1
	end

	def collect_treasure
		@gold_coins = @gold_coins +1
		if @gold_coins % 10 == 0
			level_up
		end
	end

	def do_battle(damage)
		# take damage
		@health_points = @health_points - damage
		# if healthpoints are less than 1, lose a life and reset health
		if @health_points < 1
			@lives = @lives - 1
			# if no more lives, restart game
			if @lives < 1
				restart
			end
			@health_points = 10
		end
	end

	def restart
		@gold_coins = 0
		@health_points = 10
		@lives = 5
	end
end