class Input 
    def user_choice(message, choice_2)
          choice_2.find do |i|
              if message == i
                 i.chomp
              end
          end
    end
end