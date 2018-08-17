require 'notebook'

describe "Notebook" do

class MockNote
  def empty_note
    @note = {}
  end
end

  it "is an empty array" do
    notebook = Notebook.new
    expect(notebook.notebook).to eq([])
  end

  it "returns instructions" do
    notebook = Notebook.new
    expect(notebook.instructions).to eq("Please choose an option, or \'help\'.")
  end

  it "takes user input" do
    notebook = Notebook.new
    allow($stdin).to receive(:gets).and_return('help')
    input = $stdin.gets
    expect(notebook.help).to eq('help')
  end

end
