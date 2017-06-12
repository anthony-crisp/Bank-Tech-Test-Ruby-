require 'account'

RSpec.describe Account do

  subject(:account) { described_class.new }

  it 'initializes with with a balance of 0' do
    expect(subject.balance).to eq(0)
  end

end
