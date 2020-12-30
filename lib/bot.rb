require 'telegram/bot'
require_relative './programmingjokes'
require_relative './quotes'
require 'dotenv'
Dotenv.load

# token = "1458568231:AAH6dSUJIyauebLVkg4MwqyYCw4RIOJeanA"
class Inspbot
  attr_reader :text
  token = "1458568231:AAH6dSUJIyauebLVkg4MwqyYCw4RIOJeanA"
Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      if message.text == '/start'
    bot.api.send_message(chat_id: message.chat.id, text:  "Hello,i am a bot, Welcome, #{message.from.first_name} press /programmingjokes to get chuckling jokes to ease you and /quotes for inspirational quotes ") 
    elsif message.text == '/quit'
      bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name},i wish you did not press that,you can reconsider!!,bye anyways" )
    # elsif message.text == '/programmingjoke'
    # joke = Jokes.new
    # bot.api.send_message(chat_id: message.chat.id, text: joke.random_joke(d))
  elsif message.text.match(/^[[:alpha:]]+$/)
    d = message.text
    if Jokes.new.random_joke(d) == nil
      bot.api.send_message(chat_id: message.chat.id, text: 'Please try another word!')
    else
      bot.api.send_message(chat_id: message.chat.id, text: Jokes.new.random_joke(d))
    end

  end
end
end
end