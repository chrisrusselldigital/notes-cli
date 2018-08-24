require_relative 'note'

class Notebook

  def user_input
    input = gets.chomp
    if input == "help"
      help
    end
  end

  def help
    puts "Help: to see all the available commands and their descriptions.
Create: followed by the text string to store a note
View [id]:to see the text of a note
All: to see all the notes currently stored
Exit: to exit the notes app"
  end



end
