require 'telegram/bot'
require_relative './joke'
require_relative './quote'
require_relative './mood'
class Inspbot
  attr_reader :text

  token = '1458568231:AAH6dSUJIyauebLVkg4MwqyYCw4RIOJeanA'
  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text
      when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: "Hello,i am a bot, Welcome,
         #{message.from.first_name} press /programmingjoke to get chuckling jokes to ease you and /quotes
         for inspirational quotes or '/mood' for a mood game ")
      when '/quit'
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name},
         i wish you did not press that,you can reconsider!!,bye anyways")
      when '/programmingjoke'
        joke = Jokes.new
        bot.api.send_message(chat_id: message.chat.id, text: joke.random_jokes)
      when '/quotes'
        quote = Quotes.new
        bot.api.send_message(chat_id: message.chat.id, text: quote.random_quotes)

      when '/mood'
        mood = Mood.new
        bot.api.send_message(chat_id: message.chat.id, text: mood.random_mood)

      else message.text != '/programmingjoke' || '/inspirationalquotes'
           alert = "sorry,for now we have only '/quotes' and '/programmingjoke'
                  and '/mood' for you,type either of the three to enjoy"
           bot.api.send_message(chat_id: message.chat.id, text: alert)
      end
    end
  end
end
