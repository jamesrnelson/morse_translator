require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'

class TranslatorTest < Minitest::Test
  def test_instance_of_translate
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_lower_case_letters
    translator = Translator.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_case_insensitive_and_nums
    translator = Translator.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_from_file
    translator = Translator.new
    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end

  def test_morse_to_english
    translator = Translator.new
    assert_equal "hello world", translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end
end
