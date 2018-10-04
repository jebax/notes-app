class Notes

  attr_reader :all_notes

  def initialize
    @all_notes = {}
  end

  def add(title, body)
    @all_notes[title] = body
  end

end
