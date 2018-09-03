class Notes

  attr_reader :notebook

  def initialize
    @notebook = []
    @note_id = 0
  end

  def user_input
    puts "Enter a command: "
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
      transform_input_to_view
    end
  end

  def transform_input_to_note
    @input.to_s
    @command = @input.split(' ')
    @command.shift
    @note_text = @command.join(' ')
    store_note
  end

  def transform_input_to_view
    @input.to_s
    @command = @input.split(' ')
    @command.shift
    @view_num = @command.join(' ')
    view
  end

  def store_note
    @note = {
      note: @note_text,
      created_at: Time.now.strftime('%a %dth %b at %l:%M'),
      note_id: (@note_id += 1)
    }

    @notebook << @note
    puts "note (id: #{@note_id}) stored"
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
    header = "NoteId || Note || Created"
    header
  end

  def all_notes
    @notebook.each do |item|
      puts "#{item[:note_id]} || #{item[:note]} || #{item[:created_at]}"
    end

  end

  def view
    @notebook.find { |note|
      note[:note_id] == @view_num
      p note[:created_at] + " - " + note[:note]
      }
    user_input
  end

  def exit_app
    exit
  end

  def all
    puts all_notes_header
    all_notes
    user_input
  end

end

note = Notes.new
note.user_input
