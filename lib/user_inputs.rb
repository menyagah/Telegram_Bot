class Input
  def user_choice(message, choice)
    choice.find do |i|
      i.chomp if message == i
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
