class BankAccount

  def initialize(balance, interest_rate)
    @balance=balance
    @interest_rate=interest_rate
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(@balance)
    @balance = @balance - amount
  end

  def gain_interest(@interest_rate)
    @balance = @balance + @balance*@interest_rate
  end
end
