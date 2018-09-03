class Viewer

attr_accessor :notebook

  def initialize
    @notebook = []
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

  def all
    puts all_notes_header
    all_notes
  end

  def view(view_num)
    @notebook.find { |view_num|
      view_num[:note_id] == view_num
      p view_num[:created_at] + " - " + view_num[:note]
      }
  end

end
