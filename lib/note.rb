class Note
  attr_reader :name, :contents

  def initialize
    @name = name
    @contents = contents
      @note = {
        Date: Time.now,
        Name: name,
        Contents: contents
      }
  end



end
