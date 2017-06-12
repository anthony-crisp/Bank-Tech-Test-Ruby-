require_relative 'account'

class PrintStatement

  attr_reader :transactions

  def initialize(transactions)
    @transactions = transactions
  end

  def print_statement
    transactions.each { |tr| puts tr }
  end

end
