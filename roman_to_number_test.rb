require 'minitest/autorun'
require './roman_to_number'

class RomanToNumberTest < Minitest::Test
  def test_I_returns_1
    assert_equal 1, RomanToNumber.convert("I")
  end
  def test_V_returns_5
    assert_equal 5, RomanToNumber.convert("V")
  end
  def test_VI_returns_6
    assert_equal 6, RomanToNumber.convert("VI")
  end
  def test_IV_returns_4
    assert_equal 4, RomanToNumber.convert("IV")
  end
end
