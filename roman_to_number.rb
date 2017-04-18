class RomanToNumber
  def self.convert(roman_number)
    dictionary = {
      "I": 1,
      "V": 5,
      "X": 10
    }
    cardinal_number = 0
    previous_letter_value = 0
    roman_number.split('').reverse.each do |letter|
      current_letter_value = dictionary[letter.to_sym]
      if previous_letter_value > current_letter_value
        cardinal_number -= current_letter_value
      else
        cardinal_number += current_letter_value
      end
      previous_letter_value = current_letter_value
    end
    return cardinal_number
  end
end
