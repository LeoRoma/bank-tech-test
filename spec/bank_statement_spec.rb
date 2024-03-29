require 'bank_statement'

describe BankStatement do
let(:statement) { BankStatement.new }
let(:client) { BankAccount.new }
let(:transaction1) { BankTransaction.new(client) }
let(:transaction2) { BankTransaction.new(client) }

  describe '#add_transaction' do
    it "updates the transaction of the deposit into a list" do
      allow(transaction1).to receive(:description) { "10/01/2012 || 1000 || || 1000" }
      statement.add_transaction(transaction1)
      expect(statement.transactions).to include "10/01/2012 || 1000 || || 1000"
    end

    it "updates the transaction of the withdrawal into a list" do
      allow(transaction2).to receive(:description) { "14/01/2012 || || 500 || 2500" }
      statement.add_transaction(transaction2)
      expect(statement.transactions).to include "14/01/2012 || || 500 || 2500"
    end
  end

  describe '#print' do
    it "prints the statement" do
      allow(transaction1).to receive(:description) { "10/01/2012 || 1000 || || 1000" }
      statement.add_transaction(transaction1)
      allow(transaction2).to receive(:description) { "14/01/2012 || || 500 || 2500" }
      statement.add_transaction(transaction2)
      expect(statement.print).to eq ["date || credit || debit || balance",
                                     "14/01/2012 || || 500 || 2500",
                                     "10/01/2012 || 1000 || || 1000"
                                    ]
    end
  end

end
