require 'notes'
require 'pry'

describe Notes do
  let(:notes) { subject }

  describe "#add" do
    it 'should add a note to the collection of notes' do
      title, body = "My first note", "Pick up milk on the way home"
      notes.add(title, body)
      expect(notes.all_notes).not_to be_empty
    end
  end

  describe "#titles_list" do
    it 'should list all note titles' do
      notes.add("Note 1", "Body")
      notes.add("Note 2", "Body")
      expect { notes.titles_list }.to output("Your notes:\nNote 1\nNote 2\n").to_stdout
    end
  end
end
