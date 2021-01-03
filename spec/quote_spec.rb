require_relative '../lib/quote'

describe Quotes do
let(:quote) { Quotes.new }
describe '#initialize' do
  it 'makes an instance of quotes' do
    expect(quote).to be_a Quotes
  end
end

describe '#random_quotes' do
  it 'it gives back a random joke as a String' do
    expect(quote.random_quotes).to be_a String
  end
end
end
