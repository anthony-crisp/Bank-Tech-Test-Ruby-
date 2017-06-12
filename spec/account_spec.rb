require 'account'

RSpec.describe Account do

  subject(:account) { described_class.new }

  it 'initializes with with a balance of 0' do
    expect(subject.balance).to eq(0)
  end

  describe '#deposit' do
    it 'can recieve a deposit of 10' do
      expect { subject.deposit(10) }.to change { subject.balance }.by 10
    end
  end

  describe '#withdraw' do
    it 'can be debited by 10' do
      subject.deposit(100)
      expect { subject.withdraw(10) }.to change { subject.balance}.by(-10)
    end
  end

end
