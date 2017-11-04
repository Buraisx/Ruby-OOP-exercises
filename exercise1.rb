class BankAccount
	def initialize(balance, interest_rate)
		@balance = balance
		@interest_rate = interest_rate
	end

	# deposit money
	def deposit(amount)
		@balance = @balance + amount
	end

	# Withdraw money
	def withdraw(amount)
		@balance = @balance - amount
	end

	def gain_interest
		@balance = @balance * @interest_rate
	end
end