require 'date'

class Account

  attr_reader :balance, :transactions, :date

  def initialize
    @balance = 0
    @transactions = ["date || credit || debit || balance"]
  end

  def todays_date
    Date.today.strftime('%d/%m/%Y')
  end

  def deposit(ammount)
    @balance += ammount
    @transactions << "#{todays_date} || #{'%.2f' % ammount} || || #{'%.2f' % balance}"
  end

  def withdraw(ammount)
    @balance -= ammount
    @transactions << "#{todays_date} || || #{'%.2f' % ammount} || #{'%.2f' % balance}"
  end

end
