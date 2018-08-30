class Notes

  attr_reader :notebook

  def initialize
    @notebook = []
  end

  def user_input
    @input = gets.chomp
    if @input == "help"
      help
    elsif @input =~ /^create/
      @input.to_s
      @command = @input.split(' ')
      @command.shift
      @note = @command.join(' ')
      @notebook << @note
      puts "note stored"
      puts @notebook
    end
  end

  def help
    puts "Help: to see all the available commands and their descriptions.
Create: followed by the text string to store a note.
View [id]:to see the text of a note
All: to see all the notes currently stored.
Exit: to exit the notes app"
  end

  def write_note(content)
    @note = {
      content: "content",
      time: "time"
    }
    @note[:content] = content
    time = Time.now.strftime('%d-%m-%Y')
    @note[:time] = time
    @notebook << @note
  end

  def list_of_notes
    @notebook
  end

  def all_notes_header
    puts " Content || Created "
  end

  def all_notes
    @notebook.each do |item|
      puts "#{item[:content]} || #{item[:time]}"
    end
  end

  def print
    all_notes_header
    all_notes
  end

end

# note = Notes.new
# note.user_input
