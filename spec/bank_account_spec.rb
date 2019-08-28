require 'bank_account'

describe BankAccount do
let(:statement) { BankStatement.new }
let(:client) { BankAccount.new }


  it 'has a current balance' do
    expect(client.current_balance).to eq 0
  end

end
