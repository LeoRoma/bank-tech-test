class BankTransaction
attr_reader :description

  def initialize(client)
    @client = client
    @description = ""
  end

  def deposit(amount)
    # p amount_float = '%.2f' % amount
    @client.current_balance += amount
    @description << "10/01/2012 || #{amount} || || #{@client.current_balance}"
  end

  def withdrawal(amount)
    @client.current_balance -= amount
    @description << "14/01/2012 || || #{amount} || #{@client.current_balance}"
  end

end
