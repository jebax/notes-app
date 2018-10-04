require 'notes'

describe Notes do
  let(:notes) { subject }

  describe "#add" do
    it 'should add a note to the collection of notes' do
      title, body = "My first note", "Pick up milk on the way home"
      notes.add(title, body)
      expect(notes.all_notes).not_to be_empty
    end
  end
end
