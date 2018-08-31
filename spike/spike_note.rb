class Notes

  attr_reader :notebook

  def initialize
    @notebook = []
    @note_id = 0
  end

  def user_input
    @input = gets.chomp
    input_selector
  end

  def input_selector
    if @input == "help"
      help
    elsif @input =~ /^create/
      transform_input_to_note
    elsif @input == "all"
      all
    elsif @input =~ /^view/
      view
    end
  end

  def transform_input_to_note
    @input.to_s
    @command = @input.split(' ')
    @command.shift
    @note_text = @command.join(' ')
    store_note
  end

  def store_note
    @note = {
      note: @note_text,
      created_at: Time.now.strftime('%d-%m-%Y'),
      note_id: (@note_id += 1)
    }

    @notebook << @note
    puts "note (id: #{@note_id}) stored"
    puts @notebook
    user_input
  end

  def help
    puts "Help: to see all the available commands and their descriptions.
Create: followed by the text string to store a note.
View [id]:to see the text of a note
All: to see all the notes currently stored.
Exit: to exit the notes app"
user_input
  end

  def all_notes_header
    puts ["NoteId || Note || Created"]
  end

  def all_notes
    @notebook.each do |item|
      puts "#{item[:note_id]} || #{item[:note]} || #{item[:created_at]}"
    end
  end

  def view(id)
    @notebook.select do |note|
      note[:note_id] == (id)
      puts "#{note[:note_id]} || #{note[:note]} || #{note[:created_at]}"
    end
    user_input
  end

  def exit_app
    exit
  end

  def all
    print all_notes_header
    print all_notes
    user_input
  end

end

note = Notes.new
note.user_input
