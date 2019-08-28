class BankTransaction
attr_reader :description

  def initialize(client)
    @client = client
    @description = ""
  end

  def deposit(amount)
    amount_float = '%.2f' % amount
    @client.current_balance += amount
    balance_float = '%.2f' %  @client.current_balance
    @description << "#{current_time} || #{amount_float} || || #{balance_float}"
  end

  def withdrawal(amount)
    amount_float = '%.2f' % amount
    @client.current_balance -= amount
    balance_float = '%.2f' %  @client.current_balance
    @description << "#{current_time} || || #{amount_float} || #{balance_float}"
  end

  private

  def current_time
    t = Time.now.strftime("%d:%m:%Y")
  end
end
