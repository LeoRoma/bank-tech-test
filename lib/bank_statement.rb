class BankStatement
attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_transaction(transaction)
    @transactions << "#{transaction.description}"
  end

  def print
    @transactions << "date || credit || debit || balance"
    @transactions.reverse.each do |transaction|
      puts transaction
    end
  end

end
