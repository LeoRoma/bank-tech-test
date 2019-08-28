require './lib/bank_account.rb'
require './lib/bank_statement.rb'
require './lib/bank_transaction.rb'

describe 'BankAccount' do
let(:client) { BankAccount.new }
let(:statement) { BankStatement.new }
let(:transaction) { BankTransaction.new(client) }

  describe "#deposit" do
    it 'able to deposit money' do
      transaction.deposit(100)
      expect(client.current_balance).to eq 100
    end
  end

  describe "#withdrawal" do
    it 'able to withdraw money' do
      transaction.deposit(100)
      transaction.withdrawal(20)
      expect(client.current_balance).to eq 80
    end
  end
end
