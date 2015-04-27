require_relative 'helper'
require_relative '../lib/year'

class TestDay < Minitest::Test

  def test_leap_year_divisible_by_400_true
    y = Year.new(2000)
    expected = true
    assert_equal expected, y.leap_year
  end

  def test_leap_year_divisible_by_100_false
    y = Year.new(2100)
    expected = false
    assert_equal expected, y.leap_year
  end

  def test_leap_year_divisible_by_4_true
    y = Year.new(2004)
    expected = true
    assert_equal expected, y.leap_year
  end

end
