class Paperboy
	def initialize(boy_name)
		@name = boy_name
		@experience = 0 
		@earnings = 0
	end
	# sets tommy's new quota, ensuring he doesnt slack
	def quota
		return @experience/2 + 50
	end
	# tells little tommy to deliver papers and caclulate his pay
	def deliver(start_address, end_address)
		while start_address > end_address || start_address.negative? == true || end_address.negative? == true
			puts "Re-enter your start address"
			start_address = gets.chomp
		end
		@experience = end_address - start_address
		base_pay = quota * 0.25
		if @experience > quota
			extra_pay = (@experience - quota) * 0.5
			@earnings = extra_pay + base_pay + @earnings
		else
			@earnings = base_pay + @earnings
		end
		
	end
	# outputs little tommy's total earnings
	def earnings
		return @earnings
	end
	# tommy's report
	def report
		return "Ayo dawg, mah name is #{@name} and I've delivered OVER #{@experience} papers, I've earned OVER #{earnings}$ and I want YOU to hire ME now!"		
	end
end