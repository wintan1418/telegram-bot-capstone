require 'telegram/bot'
class Inspbot
  attr_reader :text
  token = ""
Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        if message.text == '/start'
      bot.api.send_message(chat_id: message.chat.id, text:  "Hello,i am a bot, Welcome, #{message.from.first_name} press /programmingjoke to get chuckling jokes to ease you and /quotes for inspirational quotes or '/mood' for a mood game ") 
      elsif message.text == '/quit'
        bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name},i wish you did not press that,you can reconsider!!,bye anyways" )
      elsif message.text == '/programmingjoke'
    # joke = Jokes.new
    jokes = [  'Programmers are like God. We create defects and also kill them too. We spend the whole day fixing a defect, and the patch itself gives birth to a few more defects of its own. (Anonymous)',
               'The mythical creatures who solve all the problems of lesser mortals without having to move from their desks.',
               'Without google, most of us will not survive for six months in the profession of software development.',
               'why do programmers wear glasses? because they cannot c#',
               'When i wrote this code ,only God and i understood what i wrote,now ,only God knows',
               'The mythical creatures who solve all the problems of lesser mortals without having to move from their desks.',
               'Without a compiler, most of us will not be a programmer. Ok, now don’t bring up the interpreter story.',
               'A computer program does what you tell it to do, not what you want it to do.',
               'How can we complete any article for programmers without referring to stack overflow? After all, it is the brain behind every developer.
               '].sample

      bot.api.send_message(chat_id: message.chat.id, text: jokes)
    elsif message.text == '/quotes'
    quotes = [  'The Best Way To Get Started Is To Quit Talking And Begin Doing.',
                'The mythical creatures who solve all the problems of lesser mortals without having to move from their desks.',
                'Things work out best for those who make the best of how things work out. --John Wooden',
                'To live a creative life, we must lose our fear of being wrong. --Anonymous',
                'Trust because you are willing to accept the risk, not because its safe or certain. (Anonymous)',
                'Good things come to people who wait, but better things come to those who go out and get them.',
                'Just when the caterpillar thought the world was ending, he turned into a butterfly. --Proverb',
                'Try not to become a person of success, but rather try to become a person of value. --Albert Einstein',
                'First, solve the problem. Then, write the code.(John Johnson)'].sample

    bot.api.send_message(chat_id: message.chat.id, text: quotes)

      elsif message.text == '/mood'
    mood = ["😀","🤣","🙃","😘","🤑","😑","🤥","😏"].sample
    bot.api.send_message(chat_id: message.chat.id, text: mood)

    else message.text != '/programmingjoke' || '/inspirationalquotes'
      alert = "sorry,for now we have only '/quotes' and '/programmingjoke' and '/mood' for you,type either of the two to enjoy"
      bot.api.send_message(chat_id: message.chat.id, text: alert)
 end
end
end
end