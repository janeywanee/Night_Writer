class NightRead
 attr_reader :braille,
             :dictionary

  def initialize(braille)
    @braille = braille
    @dictionary = Dictionary.new
  end

 def to_text
   braille_to_text = @dictionary.library.key(@braille)
 end





end
