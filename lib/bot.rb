require 'telegram/bot'
require_relative 'user_inputs'
require_relative 'user_products'

class Bot
  include Input
  include Product
  def initialize
    super()
    @token = 'XXX_Put_Your_Token_Here_XXX'
    @chat = 'Add_Your_Chat_Id_Here'
    @hash1 = {
      'Iphone 5' => 'yes 5',
      'Iphone 6' => 'yes 6',
      'Iphone 8' => 'yes 8',
      'Iphone 10' => 'yes 10',
      'Iphone 11' => 'yes 11',
      'Iphone 12' => 'yes 12'
    }
    @hash2 = {
      'Yes 5' => ' the iphone 5',
      'Yes 6' => ' the iphone 6',
      'Yes 8' => ' the iphone 8',
      'Yes 10' => ' the iphone 10',
      'Yes 11' => ' the iphone 11',
      'Yes 12' => ' the iphone 12'
    }
  end

  def bot_commands
    text = <<~RAVEN
      \n
      Type:
      Phones- for phones
      Agent- to talk to an agent
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
            iphone 5 in lowercase
    RAVEN

    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        user_input = user_choice(message.text, @hash1.keys)
        user_agreement = user_choice(message.text, @hash2.keys)
        product_choice = user_option(user_input, @hash1)
        product = user_option(user_agreement, @hash2)
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}" + text)

        when 'Phones'
          bot.api.send_message(chat_id: message.chat.id, text: catalog)

        when user_input.to_s
          bot.api.send_message(chat_id: message.chat.id, text: "Type (#{product_choice}) to buy #{user_input}")

        when user_agreement.to_s
          bot.api.send_message(chat_id: @chat, text: "Inquiry from @#{message.from.username} about#{product}")
          bot.api.send_message(chat_id: message.chat.id, text: 'Inquiry sent successfully!')

        when 'Agent'
          bot.api.send_message(chat_id: @chat, text: " @#{message.from.username} wants to have a chat!")
          bot.api.send_message(chat_id: message.chat.id, text: 'Please wait for our next available agent.')

        else
          bot.api.send_message(chat_id: message.chat.id, text: 'Ooops! Wrong Input. Please try again.')

        end
      end
    end
  end
end
