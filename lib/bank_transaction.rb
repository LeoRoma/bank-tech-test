class BankTransaction
attr_reader :current_balance, :description

  def initialize
    @current_balance = 0
    @description = ""
  end

  def deposit(amount)
    # p amount_float = '%.2f' % amount
    @current_balance += amount
    @description << "10/01/2012 || #{amount} || || #{current_balance}"
  end

  def withdrawal(amount)
    @current_balance -= amount
    @description << "14/01/2012 || || #{amount} || #{current_balance}"
  end

end
