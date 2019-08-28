require 'bank_transaction'

describe BankTransaction do
let(:client) { BankAccount.new }
let(:transaction) { BankTransaction.new(client) }
current_time = Time.now.strftime("%d:%m:%Y")

  describe "#deposit" do
    it 'gives the possibility to deposit a certain amount of money' do
      transaction.deposit(100)
      expect(client.current_balance).to eq 100
    end

    it 'add the description of the completed transaction' do
      transaction.deposit(1000)
      expect(transaction.description).to eq "#{current_time} || 1000.00 || || 1000.00"
    end
  end

  describe "#withdrawal" do
    it 'gives the possibility to withdraw a certain amount of money' do
      transaction.deposit(100)
      transaction.withdrawal(50)
      expect(client.current_balance).to eq 50
    end

    it 'add the description of the completed transaction' do
      transaction.deposit(3000)
      transaction.withdrawal(500)
      expect(transaction.description).to include "#{current_time} || || 500.00 || 2500.00"
    end
  end

end
