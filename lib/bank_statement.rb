class BankStatement
attr_reader :transactions

  def initialize
    @transactions = ["date || credit || debit || balance"]
  end

  def add_transaction(transaction)
     @transactions << "#{transaction.description}"
  end

  def show
    @transactions.each do |transaction|
      transaction
    end
  end
end
