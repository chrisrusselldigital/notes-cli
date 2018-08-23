class Note

  def initialize
    @note = {
      :name => "name",
      :contents => "contents",
      :created => Time.now

    }

  end

  def create_note
    puts "Enter a name for the note:"
    name = gets.chomp
    @note[:name] = name
    puts "Enter some content in the note:"
    contents = gets.chomp
    @note[:contents] = contents
  end



end
