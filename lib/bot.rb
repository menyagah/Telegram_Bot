require 'telegram/bot'
require_relative 'user_inputs'

class Bot < Input
  def initialize
    super()
    @token ="1459415953:AAHaSG027CNV40Fz9s-CSD1jIHmVDN9FiGM"
    @chat = 1174054601
  end

  def bot_commands
    text = <<~RAVEN
      \n
      Type:
      /phones- for phones
      /agent- to talk to an agent
      \n
      note: kindly set up your telegram username if you haven't yet.
    RAVEN
    catalog = <<~RAVEN
      \n
      we have a wide range of products:
            * iphone 5 @ 5,600ksh
            * iphone 6 @ 22,000kshs
            * iphone 8 @ 40,000kshs
            * iphone 10 @ 68,000kshs
            * iphone 11 @ 110,000kshs
            * iphone 12 @ 180,000kshs
            Type a specific phone model starting with / e.g.
            (/iphone 5) in lowercase
    RAVEN

    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        user_input = user_choice(message.text, ['/iphone 5',
                                                '/iphone 6',
                                                '/iphone 8',
                                                '/iphone 10',
                                                '/iphone 11',
                                                '/iphone 12'])
        user_agreement = user_choice(message.text, ['/yes 5',
                                                    '/yes 6',
                                                    '/yes 8',
                                                    '/yes 10',
                                                    '/yes 11',
                                                    '/yes 12'])

        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}" + text)

        when '/phones'
          bot.api.send_message(chat_id: message.chat.id, text: catalog)

        when user_input.to_s
          bot.api.send_message(chat_id: message.chat.id, text: "Type #{user_option(user_input)} to buy #{user_input}")

        when user_agreement.to_s
          bot.api.send_message(chat_id: @chat, text: " You have a new inquiry from @#{message.from.username} about an #{product(user_agreement)}")
          bot.api.send_message(chat_id: message.chat.id, text: 'Inquiry sent successfully!')

        when '/agent'
          bot.api.send_message(chat_id: @chat, text: " @#{message.from.username} wants to have a chat!")
          bot.api.send_message(chat_id: message.chat.id, text: 'Please wait for our next available agent.')

        else
          bot.api.send_message(chat_id: message.chat.id, text: "Ooops! Wrong Input. Please try again.")

        end
      end
    end
  end
end
