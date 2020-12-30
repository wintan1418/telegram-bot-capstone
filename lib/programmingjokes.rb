require_relative './recall'
require 'giggle'
# A class with a method which returns a joke after searching it by word! 
class Jokes
  def random_joke(text)
    Giggle.search(term: text, limit: 1)[0]
  end

  def search(text)
 @search = 
  end
end