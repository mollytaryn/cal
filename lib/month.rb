require_relative 'day'
require_relative 'year'

class Month
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def month_name
    month_name = {
      1 => "January",
      2 => "February",
      3 => "March",
      4 => "April",
      5 => "May",
      6 => "June",
      7 => "July",
      8 => "August",
      9 => "September",
      10 => "October",
      11 => "November",
      12 => "December" }
    month_name[@month]
  end

  def month_length
    year = Year.new(@year)
    if month == 4 || month == 6 || month == 9 || month == 11
      month_length = 30
    elsif month == 2 && !year.leap_year
      month_length = 28
    elsif month == 2 && year.leap_year
      month_length = 29
    else
      month_length = 31
    end
  end

  def days
    day = Day.new(month, year)
    days_arr = (1..month_length).to_a
    string = ""
    if day.start_day == 0
      days_arr.unshift("  ", "  ", "  ", "  ", "  ", "  ")
    elsif day.start_day == 2
      days_arr.unshift("  ")
    elsif day.start_day == 3
      days_arr.unshift("  ", "  ")
    elsif day.start_day == 4
      days_arr.unshift("  ", "  ", "  ")
    elsif day.start_day == 5
      days_arr.unshift("  ", "  ", "  ", "  ")
    elsif day.start_day == 6
      days_arr.unshift("  ", "  ", "  ", "  ", "  ")
    end

    arr = days_arr.map{ |d| d.to_s.rjust(2) }
    week_1 = arr[0..6].join(" ")
    week_2 = arr[7..13].join(" ")
    week_3 = arr[14..20].join(" ")
    week_4 = arr[21..27].join(" ")
    week_5 = arr[28..34].join(" ")

    if day.start_day == 0 && month != 2 || day.start_day == 6 && month != 2
      week_6 = arr[35..36].join(" ")
    else
      week_6 = " "
    end
    string = "#{week_1}\n#{week_2}\n#{week_3}\n#{week_4}\n#{week_5}\n#{week_6}".rstrip
  end

  def header
    header = "#{month_name} #{year}".center(20).rstrip
  end

  def to_s
    <<EOS
#{header}
Su Mo Tu We Th Fr Sa
#{days}
EOS
  end
end
