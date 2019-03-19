require_relative '../hello-world/hello_world'

RSpec.describe 'HelloWorldTest' do
  it 'returns hello' do
    expect(HelloWorld.hello).to eq ("Hello, World!")
  end
end
