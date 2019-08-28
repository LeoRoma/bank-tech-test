require 'bank_statement'

class BankAccount
attr_accessor :current_balance

  def initialize
    @current_balance = 0
  end

  def print(statement)
    statement.show
  end
end
