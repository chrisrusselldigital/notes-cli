class Notebook

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
  end

end

notebook = Notebook.new

notebook.instructions
