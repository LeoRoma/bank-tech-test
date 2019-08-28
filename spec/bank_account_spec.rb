require 'bank_account'

describe BankAccount do
let(:statement) { BankStatement.new }
let(:client) { BankAccount.new }


  it 'has a current balance' do
    expect(client.current_balance).to eq 0
  end

  describe '#print' do
    xit "prints the full statement" do
      allow(statement).to receive(:transactions) {["date || credit || debit || balance",
                                    "10/01/2012 || 1000 || || 1000",
                                    "14/01/2012 || || 500 || 2500"]}
      p statement
      expect(client.print(statement)).to eq ["date || credit || debit || balance",
                                    "10/01/2012 || 1000 || || 1000",
                                    "14/01/2012 || || 500 || 2500"]
    end
  end
end
