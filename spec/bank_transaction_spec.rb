require 'bank_transaction'

describe BankTransaction do
let(:transaction) { BankTransaction.new }

  it 'has a current balance' do
    expect(transaction.current_balance).to eq 0
  end

  
end
