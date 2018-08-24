class Notes

  attr_reader :notebook

  def initialize
    @notebook = []
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
