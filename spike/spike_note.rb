class Notes

  attr_reader :notebook

  def initialize
    @notebook = []
    @note_id = 0
  end

  def user_input
    @input = gets.chomp
    if @input == "help"
      help
    elsif @input =~ /^create/
      @input.to_s
      @command = @input.split(' ')
      @command.shift
      @note_text = @command.join(' ')
      @note = {
        note: @note_text,
        time: Time.now.strftime('%d-%m-%Y'),
        note_id: (@note_id += 1)
      }
      @notebook << @note
      puts "note (id: #{@note_id}) stored"
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

  def all_notes_header
    puts ["NoteId || Note || Created"]
  end

  def all_notes
    @notebook.each do |item|
      puts "#{item[:note_id]} || #{item[:note]} || #{item[:time]}"
    end
  end

  def view(id)
    @notebook.select do |note|
      note[:note_id] == (id)
      puts "#{note[:note_id]} || #{note[:note]} || #{note[:time]}"
    end
  end

  def exit_app
    exit
  end

  def all
    print all_notes_header
    print all_notes; nil
  end

end

# note = Notes.new
# note.user_input
