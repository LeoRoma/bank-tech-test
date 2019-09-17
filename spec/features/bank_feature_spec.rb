require './lib/bank_account.rb'
require './lib/bank_statement.rb'
require './lib/bank_transaction.rb'

describe 'BankAccount' do
let(:client) { BankAccount.new }
let(:statement) { BankStatement.new }
let(:transaction1) { BankTransaction.new(client) }
let(:transaction2) { BankTransaction.new(client) }

  describe "#deposit" do
    it 'able to deposit money' do
      transaction1.deposit(100)
      expect(client.current_balance).to eq 100
    end
  end

  describe "#withdrawal" do
    it 'able to withdraw money' do
      transaction1.deposit(100)
      transaction1.withdrawal(20)
      expect(client.current_balance).to eq 80
    end
  end

  describe "#add_transaction" do
    it 'adds transaction into statement' do
      allow(transaction1).to receive(:description) { "10/01/2012 || 1000 || || 1000" }
      statement.add_transaction(transaction1)
      expect(statement.transactions).to eq ["10/01/2012 || 1000 || || 1000"]
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
