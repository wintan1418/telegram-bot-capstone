require_relative './helper'
class Mood
  include Methods
  attr_reader :mood

  def initialize
    @mood = ['😀', '🤣', '🙃', '😘', '🤑', '😑', '🤥', '😏']
  end

  def random_mood
    Methods.rand_string(@mood)
  end
end

