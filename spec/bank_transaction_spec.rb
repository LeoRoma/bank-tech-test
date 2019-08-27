require 'bank_transaction'

describe BankTransaction do
let(:transaction) { BankTransaction.new }

  it 'has a current balance' do
    expect(transaction.current_balance).to eq 0
  end

  describe "#deposit" do
    it 'gives the possibility to deposit a certain amount' do
      transaction.deposit(100)
      expect(transaction.current_balance).to eq 100
    end
  end

end
