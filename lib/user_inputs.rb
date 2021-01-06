class Input
  def user_choice(message, choice)
    choice.find do |i|
      i.chomp if message == i
    end
  end
end
