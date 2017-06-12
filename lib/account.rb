require_relative './print_statement.rb'
require 'date'

class Account
  OVER_DRAFT = -10

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
    raise 'Insuficient funds in account.' if @balance <= OVER_DRAFT
    @balance -= ammount
    @transactions << "#{todays_date} || || #{'%.2f' % ammount} || #{'%.2f' % balance}"
  end

  def statement
    PrintStatement.new(@transactions).print_statement
  end

end
