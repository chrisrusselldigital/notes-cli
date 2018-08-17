require_relative 'note'

class Notebook

  attr_reader :notebook

  def initialize
    @notebook = []
  end

  def instructions
    return "Please choose an option, or \'help\'."
    input
  end

  def input
    input = gets.chomp
    if input == "help"
      help
      end
  end

  def help
    "help"
  end

end
