require 'account'
require 'print_statement'

RSpec.describe PrintStatement do
  subject(:print_statement) { described_class.new(["date || credit || debit || balance"]) }
  it 'outputs to stdout' do
    expect { subject.print_statement }.to output("date || credit || debit || balance\n").to_stdout
  end
end
