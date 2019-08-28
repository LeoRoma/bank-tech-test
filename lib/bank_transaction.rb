class BankTransaction
attr_reader :description

  def initialize(client)
    @client = client
    @description = ""
  end

  def deposit(amount)
    # p amount_float = '%.2f' % amount
    @client.current_balance += amount
    @description << "#{current_time} || #{amount} || || #{@client.current_balance}"
  end

  def withdrawal(amount)
    @client.current_balance -= amount
    @description << "#{current_time} || || #{amount} || #{@client.current_balance}"
  end

  private

  def current_time
    t = Time.now.strftime("%d:%m:%Y")
  end
end
