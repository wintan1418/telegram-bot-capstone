require_relative '../lib/mood'

describe Mood do
  let(:mood) {  Mood.new }
  describe '#initialize' do
    it 'makes an instance of quotes' do
      expect(mood).to be_a Mood
    end
  end

  describe '#random_quotes' do
    it 'it gives back a random joke as a String' do
      expect(mood.random_mood).to be_a String
    end
  end
end