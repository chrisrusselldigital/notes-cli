require_relative 'note'

class Notebook

def initialize
  @notebook = []
end

  def instructions
    puts "Enter a command, \'help\', or \'quit\'."
    input = gets.chomp
    if input == "help"
      help
    elsif input == "new"
      new_note
    else exit
    end
  end

  def new_note
    @note ||= Note.new
    @note.create_note
  end

  def help
    puts "-Type \'new\' to create a new note
-Type \'quit\' to leave the program
-Type \'help\' to see this menu again"
    instructions
  end

end

notebook = Notebook.new

notebook.instructions
