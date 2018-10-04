class Notes

  attr_reader :all_notes

  def initialize
    @all_notes = {}
  end

  def add(title, body)
    @all_notes[title] = body
  end

  def titles_list
    puts "Your notes:"
    puts @all_notes.keys
  end

  def print_specific_note(title)
    puts @all_notes[title]
  end

end
