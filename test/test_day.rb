require_relative 'helper'
require_relative '../lib/day'

class TestDay < Minitest::Test

  def test_month_starts_on_saturday
    d = Day.new(10, 2016)
    expected = 0
    assert_equal expected, d.start_day
  end

  def test_month_starts_on_sunday
    d = Day.new(01, 2012)
    expected = 1
    assert_equal expected, d.start_day
  end

  def test_month_starts_on_monday
    d = Day.new(06, 2015)
    expected = 2
    assert_equal expected, d.start_day
  end

  def test_month_starts_on_tuesday
    d = Day.new(01, 2013)
    expected = 3
    assert_equal expected, d.start_day
  end

  def test_month_starts_on_wednesday
    d = Day.new(05, 2013)
    expected = 4
    assert_equal expected, d.start_day
  end

  def test_month_starts_on_thursday
    d = Day.new(8, 2013)
    expected = 5
    assert_equal expected, d.start_day
  end

  def test_month_starts_on_friday
    d = Day.new(02, 2013)
    expected = 6
    assert_equal expected, d.start_day
  end

end
