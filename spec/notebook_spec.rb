require 'notebook'
require 'stringio'

def user_input
  $stdin.gets.chomp
end

describe "Notebook" do


  context "when user inputs help" do
    notes = Notebook.new

    before do
      $stdin = StringIO.new("help\n")
    end

    after do
      $stdin = STDIN
    end

  it "should return a list of help options " do
    expect{ notes.help }.to output("Help: to see all the available commands and their descriptions.
Create: followed by the text string to store a note
View [id]:to see the text of a note
All: to see all the notes currently stored
Exit: to exit the notes app\n").to_stdout
  end



end

end
