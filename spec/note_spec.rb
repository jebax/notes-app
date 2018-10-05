require 'notes'
require 'pry'

describe Notes do
  let(:notes) { subject }
  let(:add_test_note) { notes.add("Note 1", "Body") }
  let(:add_second_note) { notes.add("Note 2", "Body") }

  describe "#add" do
    it 'should add a note to the collection of notes' do
      add_test_note
      expect(notes.all_notes).not_to be_empty
    end

    it 'should raise an error if the note title already exists' do
      add_test_note
      expect { notes.add("Note 1", "Body") }.to raise_error "Note title already exists!"
    end
  end

  describe "#titles_list" do
    it 'should list all note titles' do
      add_test_note
      add_second_note
      expect { notes.titles_list }.to output("Your notes:\nNote 1\nNote 2\n").to_stdout
    end

    it 'should raise an error if there are no stored notes' do
      expect { notes.titles_list }.to raise_error "There are no notes to print!"
    end
  end

  describe "#print_specific_note" do
    it 'should print a note from a given title' do
      add_test_note
      add_second_note
      expect { notes.print_specific_note("Note 1") }.to output("Note 1: Body\n").to_stdout
    end

    it 'should raise an error if the specified note does not exist' do
      add_test_note
      expect { notes.print_specific_note("Note 2") }.to raise_error "Specified note does not exist!"
    end
  end
end
