class BankAccount
	def initialize
		@balance = 0
		@interest_rate = 0
	end

	# deposit money
	def deposit(amount)
		@balance = @balance + amount
	end

	# Withdraw money
	def withdraw(amount)
		@balance = @balance - amount
	end

	# def gain_interest
		
	# end
end