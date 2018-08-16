require_relative 'note'

class Notebook

attr_reader :notebook

  def initialize
    @notebook = []
  end

  def create_note
    @note ||= Note.new
  end

end
