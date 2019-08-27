require 'bank_statement'

describe BankStatement do
let(:statement) { BankStatement.new }
let(:transaction) { BankTransaction.new }


  describe '#add_transiction' do
    it "updates the transaction of the deposit into a list" do
      allow(transaction).to receive(:description) { "10/01/2012 || 1000 || || 1000" }
      statement.add_transaction(transaction)
      expect(statement.transactions).to include "10/01/2012 || 1000 || || 1000"
    end

  end

end
