require 'telegram/bot'
require_relative './joke'
require_relative './quote'
require '../config'

class Inspbot
  attr_reader :text

  def initialize
    Telegram::Bot::Client.run(TOKEN_KEY) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello,i am a bot, Welcome,
        #{message.from.first_name} press /programmingjoke to get chuckling jokes to ease you and /quotes
        for inspirational quotes  ")
        when '/quit'
          bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name},
        i wish you did not press that,you can reconsider!!,bye anyways")
        when '/programmingjoke'
          joke = Jokes.new
          bot.api.send_message(chat_id: message.chat.id, text: joke.random_jokes)
        when '/quotes' 
          quote = Quotes.new
          bot.api.send_message(chat_id: message.chat.id, text: quote.random_quotes)

        else message.text != '/programmingjoke' || '/inspirationalquotes'
             alert = "sorry,we have only '/quotes', '/programmingjoke','/mood'"
             bot.api.send_message(chat_id: message.chat.id, text: alert)
        end
      end
    end
  end
end
