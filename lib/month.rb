require_relative 'day'

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
    if month == 4 or month == 6 or month == 9 or month == 11
      month_length = 30
    elsif month == 2 && (year % 4) != 0 || month == 2 && (year % 100) == 0 && (year % 400) != 0
      month_length = 28
    elsif month == 2 && (year % 400) == 0  && (year % 100) || month == 2 && (year % 4) == 0
      month_length = 29
    else
      month_length = 31
    end
  end


  def days
    day = Day.new(month, year)
    days = (1..month_length)
    arr = days.to_a
    if day.start_day == 0
      arr.unshift("  ", "  ", "  ", "  ", "  ", "  ")
    elsif day.start_day == 2
      arr.unshift("  ")
    elsif day.start_day == 3
      arr.unshift("  ", "  ")
    elsif day.start_day == 4
      arr.unshift("  ", "  ", "  ")
    elsif day.start_day == 5
      arr.unshift("  ", "  ", "  ", "  ")
    elsif day.start_day == 6
      arr.unshift("  ", "  ", "  ", "  ", "  ")
    end

    arr = arr.map{ |d| d.to_s.rjust(2) }
    week_1 = arr[0..6].join(" ")
    week_2 = arr[7..13].join(" ")
    week_3 = arr[14..20].join(" ")
    week_4 = arr[21..27].join(" ")
    week_5 = arr[28..34].join(" ")
    if day.start_day == 0 || day.start_day == 6
      week_6 = arr[35..36].join(" ")
      string = "#{week_1}\n#{week_2}\n#{week_3}\n#{week_4}\n#{week_5}\n#{week_6}".rstrip
    else
      string = "#{week_1}\n#{week_2}\n#{week_3}\n#{week_4}\n#{week_5}".rstrip
    end
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
