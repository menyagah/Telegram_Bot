require 'telegram/bot'
require_relative 'user_inputs'

class Bot < Input
  def initialize
    super()
    user = Input.new
    token = '1459415953:AAHaSG027CNV40Fz9s-CSD1jIHmVDN9FiGM'
    chat = 1_174_054_601

    text = <<~RAVEN
              \n
              /phones-to see our list of phones on sale
              /stop-to leave the bot shop
              /agent- to talk to talk to an actual human!
      #{'        '}
              NOTE: PLEASE SET UP YOUR TELEGRAM USERNAME SO THAT OUR NEXT AVAILABLE REPRESENTATIVE CAN WALK YOU THROUGH THE PURCHASE.
    RAVEN
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        user_input = user.user_choice(message.text, ['/iphone 5', '/iphone 6', '/iphone 8', '/iphone 10', '/iphone 11', '/iphone 12'])
        user_agreement = user.user_choice(message.text, ['/yes 5', '/yes 6', '/yes 8', '/yes 10', '/yes 11', '/yes 12'])

        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
          bot.api.send_message(chat_id: message.chat.id, text: "You can check our items on sale by typing:

                    /phones-to see our list of phones on sale
                    /stop-to leave the bot shop
                    /agent- to talk to talk to an actual human!")

        when '/phones'
          bot.api.send_message(chat_id: message.chat.id, text: "we have a wide range of products:
                    * iphone 5 @ 5,600ksh
                    * iphone 6 @ 22,000kshs
                    * iphone 8 @ 40,000kshs
                    * iphone 10 @ 68,000kshs
                    * iphone 11 @ 110,000kshs
                    * iphone 12 @ 180,000kshs
                    Type a specific phone model starting with / e.g.
                    /iphone 5")

        when user_input.to_s
          bot.api.send_message(chat_id: message.chat.id, text: "Type #{user_option(user_input)} to buy #{user_input}" + text)

        when user_agreement.to_s
          bot.api.send_message(chat_id: chat, text: " You have a new inquiry from @#{message.from.username}")
          bot.api.send_message(chat_id: message.chat.id, text: 'Inquiry sent successfully! Now sit back and let us do the heavy lifting!')

        when '/agent'
          bot.api.send_message(chat_id: chat, text: " You have a new inquiry from @#{message.from.username} who wants to directly talk to you.")
          bot.api.send_message(chat_id: message.chat.id, text: 'Please wait for a maximum of 2minutes while our next available customer care agent reaches out to you! Thank you for shopping with us!')

        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: " Sad to see you leave #{message.from.first_name} hoping to hear from you soon!")

        else
          bot.api.send_message(chat_id: message.chat.id, text: 'Ooops! Looks like you typed the wrong input. Please try again.')

        end
      end
    end
  end

  def user_option(user_choice)
    type = user_choice
    lists = {
      '/iphone 5' => '/yes 5',
      '/iphone 6' => '/yes 6',
      '/iphone 8' => '/yes 8',
      '/iphone 10' => '/yes 10',
      '/iphone 11' => '/yes 11',
      '/iphone 12' => '/yes 12'
    }
    lists[type]
  end
end
