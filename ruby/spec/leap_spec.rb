require_relative '../leap/leap'

RSpec.describe 'leap' do
  it 'returns false when year not divisible by 4' do
    expect(Year.leap?(2015)).to be_falsey
  end

  it 'returns true when year divisible by 4 but not divisible by 100' do
    expect(Year.leap?(1996)).to be_truthy
  end

  it "returns false when year divisible by 100 but not divisible by 400" do
    expect(Year.leap?(2100)).to be_falsey
  end

  it "returns true when year divisible by 400" do
    expect(Year.leap?(2000)).to be_truthy
  end

  it "returns false when year divisible by 200 but not divisible by 400" do
    expect(Year.leap?(1800)).to be_falsey
  end
end
