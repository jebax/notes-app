class Notes

  attr_reader :all_notes

  def initialize
    @all_notes = {}
  end

  def add(title, body)
    raise "Note title already exists!" if @all_notes.keys.include? title
    @all_notes[title] = body
  end

  def titles_list
    raise "There are no notes to print!" if @all_notes.empty?
    puts "Your notes:"
    puts @all_notes.keys
  end

  def print_specific_note(title)
    raise "Specified note does not exist!" unless @all_notes[title]
    "#{title}: #{@all_notes[title]}"
  end

end
