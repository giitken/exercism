require_relative '../lib/hello'

RSpec.describe Hello do
  it "returns hello" do
    expect(Hello.new.message).to eq "hello"
  end
end
