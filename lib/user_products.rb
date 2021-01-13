require_relative 'user_inputs'

module Product
  include Input
  def user_option(user_choice, lists)
    type = user_choice
    lists[type]
  end
end
