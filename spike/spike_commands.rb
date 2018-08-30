require_relative 'spike_note'

class Commands

  def initialize
    @note = Notes.new
  end

  def user_input
    input = gets.chomp
    if input == "help"
      help
    elsif input == input.match(/^(create)(.*)/)
      create_note(input[1])
    end
  end

  def help
    puts "Help: to see all the available commands and their descriptions.
Create: followed by the text string to store a note.
View [id]:to see the text of a note
All: to see all the notes currently stored.
Exit: to exit the notes app"
  end

  def all_notes_header
    puts " Name || Content || Created "
  end



  def create_note(content)
    @content = content
    "something"
    # @note.write_note
  end


  def print
    all_notes_header
    all_notes
  end

end

# notebook = Commands.new
#
# notebook.instructions
