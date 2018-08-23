class Note

  def initialize
    @notebook = []

  end

  def new_note
    @note = {
      name: "name",
      content: "content",
      time: "time"
    }
    name = gets.chomp
    @note[:name] = name
    content = gets.chomp
    @note[:content] = content
    time = Time.now.strftime('%d-%m-%Y')
    @note[:time] = time
    @notebook << @note
  end

  def all_notes_header
    puts " Name || Content || Created "
  end

  def all_notes
    @notebook.each do |item|
      puts " #{item[:name]} || #{item[:content]} || #{item[:time]} "
    end
  end

  def print
    all_notes_header
    all_notes
  end



end
