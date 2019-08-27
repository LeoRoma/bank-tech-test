require 'bank_transaction'

describe BankTransaction do
let(:transaction) { BankTransaction.new }

  it 'has a current balance' do
    expect(transaction.current_balance).to eq 0
  end

  describe "#deposit" do
    it 'gives the possibility to deposit a certain amount of money' do
      transaction.deposit(100)
      expect(transaction.current_balance).to eq 100
    end

    it 'add the description of the completed transaction' do
      transaction.deposit(1000)
      expect(transaction.description).to eq "10/01/2012 || 1000 || || 1000"
    end
  end

  describe "#withdrawal" do
    it 'gives the possibility to withdraw a certain amount of money' do
      transaction.deposit(100)
      transaction.withdrawal(50)
      expect(transaction.current_balance).to eq 50
    end

    it 'add the description of the completed transaction' do
      transaction.deposit(3000)
      transaction.withdrawal(500)
      expect(transaction.description).to include "14/01/2012 || || 500 || 2500"
    end
  end

end
