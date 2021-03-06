require 'pry'

class Translator
  attr_reader :dictionary

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def eng_to_morse(string)
    letters = string.downcase.split("")
    translation = letters.map {|letter| dictionary[letter]}
    translation.join
  end

  def from_file(file_name)
    file = File.open(file_name, "r")
    contents = file.read
    eng_to_morse(contents)
  end
translator = Translator.new
  def morse_to_eng(morse_string)
    morse_letters = morse_string.split
    english_translation = morse_letters.map {|morse_letter| dictionary.key(morse_letter)}
    english_translation.join

  end

end
translator = Translator.new
binding.pry
translator.eng_to_morse("hello world")
