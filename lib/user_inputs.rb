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

  def product(user_choice)
    type = user_choice
    lists = {
      '/yes 5' => 'Iphone 5',
      '/yes 6' => 'Iphone 6',
      '/yes 8' => 'Iphone 8',
      '/yes 10' => 'Iphone 10',
      '/yes 11' => 'Iphone 11',
      '/yes 12' => 'Iphone 12'
    }
    lists[type]
  end
end
