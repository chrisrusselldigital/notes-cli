class Note
  attr_reader :name, :contents

  def initialize
    @name = name
    @contents = contents
      @note = {
        Contents: contents,
        Date: Time.now
      }
  end


end
