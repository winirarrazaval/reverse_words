require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/reverse_words'

describe "reverse words" do
  describe "basic tests" do
    it "reverse each word in a sentence with one word" do
      test_string = "Engineer"

      reverse_words(test_string)

      test_string.must_equal "reenignE"
    end

    it "reverse each word in a sentence with two words" do
      test_string = "hello, world"

      reverse_words(test_string)

      test_string.must_equal ",olleh dlrow"
    end
  end

  # if it's a string parameter, check for empty
  describe "empty string input test" do
    it "reverse each word in an empty sentence" do
      test_string = ""

      reverse_words(test_string)

      test_string.must_be_empty
    end
  end

  # if the parameter is an object, check for nil
  describe "nil object input test" do
    it "nil object passed to reverse words" do
      test_string = nil

      reverse_words(test_string)

      test_string.must_be_nil
    end
  end

  # check for edge cases
  describe "edge cases" do
    it "reverse each single character word in a sentence with multiple words" do
      test_string = "a b c d e f g h ? 1 2 4"

      reverse_words(test_string)

      test_string.must_equal "a b c d e f g h ? 1 2 4"
    end

    it "reverse each word in a sentence with multiple words" do
      test_string = "I strive to engineer the most efficient solutions."

      reverse_words(test_string)

      test_string.must_equal "I evirts ot reenigne eht tsom tneiciffe .snoitulos"
    end

    it "reverse words in a sentence with preceeding and trailing white spaces" do
      test_string = "   evol  "

      reverse_words(test_string)

      test_string.must_equal "   love  "
    end
  end
end
