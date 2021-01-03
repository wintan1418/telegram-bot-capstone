require_relative '../lib/joke'

describe Jokes do
  let(:joke) { Jokes.new }
  describe '#initialize' do
    it 'makes an instance of Jokes' do
      expect(joke).to be_a Jokes
    end
  end

  describe '#random_jokes' do
    it 'it gives back a random joke as a String' do
      expect(joke.random_jokes).to be_a String
    end
  end
end
