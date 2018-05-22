
require 'account'

describe Account do
  subject(:sams_account) { described_class.new }

  it 'should create an account with a balance of zero by default' do
    expect(sams_account.balance).to eq 0
  end
end
