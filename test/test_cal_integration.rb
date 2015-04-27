require_relative 'helper'

class TestCalIntegration < Minitest::Test
  def test_helper_message
  output = `./cal.rb`
  expected = <<EOS
Date not in acceptable format/range.
EOS
  assert_equal expected, output
end


  def test_month_that_starts_on_sunday
    output = `./cal.rb 01 2012`
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
    assert_equal expected, output
  end

  def test_regular_leap_years
    output = `./cal.rb 02 2016`
    expected = <<EOS
   February 2016
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29
EOS
    assert_equal expected, output
  end

  def test_century_leap_years_divisible_by_400
    output = `./cal.rb 02 2000`
    expected = <<EOS
   February 2000
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29
EOS
    assert_equal expected, output
  end

  def test_century_leap_years_not_divisible_by_400
    output = `./cal.rb 02 2100`
    expected = <<EOS
   February 2100
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28
EOS
    assert_equal expected, output
  end

  def test_month_length_january
    output = `./cal.rb 01 2017`
    expected = <<EOS
    January 2017
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
    assert_equal expected, output
  end

  def test_month_length_february
    output = `./cal.rb 02 2017`
    expected = <<EOS
   February 2017
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28
EOS
    assert_equal expected, output
  end

  def test_month_length_march
    output = `./cal.rb 03 2017`
    expected = <<EOS
     March 2017
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31
EOS
    assert_equal expected, output
  end

  def test_month_length_april
    output = `./cal.rb 04 2017`
    expected = <<EOS
     April 2017
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30
EOS
    assert_equal expected, output
  end

  def test_month_length_may
    output = `./cal.rb 05 2017`
    expected = <<EOS
      May 2017
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31
EOS
    assert_equal expected, output
  end

  def test_month_length_june
    output = `./cal.rb 06 2017`
    expected = <<EOS
     June 2017
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30
EOS
    assert_equal expected, output
  end

  def test_month_length_july
    output = `./cal.rb 07 2017`
    expected = <<EOS
     July 2017
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    assert_equal expected, output
  end

  def test_month_length_august
    output = `./cal.rb 08 2017`
    expected = <<EOS
    August 2017
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31
EOS
    assert_equal expected, output
  end

  def test_month_length_september
    output = `./cal.rb 09 2017`
    expected = <<EOS
   September 2017
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
EOS
    assert_equal expected, output
  end

  def test_month_length_october
    output = `./cal.rb 10 2017`
    expected = <<EOS
    October 2017
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
    assert_equal expected, output
  end

  def test_month_length_november
    output = `./cal.rb 11 2017`
    expected = <<EOS
   November 2017
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30
EOS
    assert_equal expected, output
  end

  def test_month_length_december
    output = `./cal.rb 12 2017`
    expected = <<EOS
   December 2017
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
    assert_equal expected, output
  end


  def test_input_min_date
    output = `./cal.rb 01 1800`
    expected = <<EOS
    January 1800
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31
EOS
    assert_equal expected, output
  end


  def test_input_max_date
    output = `./cal.rb 12 3000`
    expected = <<EOS
   December 3000
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31
EOS
    assert_equal expected, output
 end

 def test_input_outside_min_date
   output = `./cal.rb 12 1799`
   expected = <<EOS
Date not in acceptable format/range.
EOS
   assert_equal expected, output
 end


  def test_input_outside_max_date
    output = `./cal.rb 01 3001`
    expected = <<EOS
Date not in acceptable format/range.
EOS
    assert_equal expected, output
  end

#   def test_invalid_input_month_spelled_out
#     output = `./cal.rb April 2014`
#     expected = <<EOS
# Date not in acceptable format/range.
# EOS
#     assert_equal expected, output
#   end

  def test_invalid_input_year_before_month
    output = `./cal.rb 2014 08`
    expected = <<EOS
Date not in acceptable format/range.
EOS
    assert_equal expected, output
  end
end
