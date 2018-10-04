require 'notes'
require 'pry'

describe Notes do
  let(:notes) { subject }

  describe "#add" do
    it 'should add a note to the collection of notes' do
      notes.add("Note 1", "Body")
      expect(notes.all_notes).not_to be_empty
    end

    it 'should raise an error if the note title already exists' do
      notes.add("Note 1", "Body")
      expect { notes.add("Note 1", "Body") }.to raise_error "Note title already exists!"
    end
  end

  describe "#titles_list" do
    it 'should list all note titles' do
      notes.add("Note 1", "Body")
      notes.add("Note 2", "Body")
      expect { notes.titles_list }.to output("Your notes:\nNote 1\nNote 2\n").to_stdout
    end

    it 'should raise an error if there are no stored notes' do
      expect { notes.titles_list }.to raise_error "There are no notes to print!"
    end
  end

  describe "#print_specific_note" do
    it 'should print a note from a given title' do
      notes.add("Note 1", "This is the body for note 1.")
      notes.add("Note 2", "This is the body for note 2.")
      expect { notes.print_specific_note("Note 1")}.to output("Note 1: This is the body for note 1.\n").to_stdout
    end

    it 'should raise an error if the specified note does not exist' do
      notes.add("Note 1", "Body")
      expect { notes.print_specific_note("Note 2") }.to raise_error "Specified note does not exist!"
    end
  end
end
