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

  it "creates a notes" do
    notebook = Notebook.new
    note = MockNote.new
    expect(notebook.create_note).to eq({})
  end

end
