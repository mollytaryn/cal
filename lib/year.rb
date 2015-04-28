require_relative 'month'

class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def leap_year
    if (year % 4) != 0 || (year % 100) == 0 && (year % 400) != 0
      leap_year3 = false
    elsif (year % 400) == 0 && (year % 100) || (year % 4) == 0
      leap_year = true
    end
  end

  def weeks_row_1
    string = ""
    jan = Month.new(1, year)
    feb = Month.new(2, year)
    march = Month.new(3, year)
    puts jan.week_1
  end

  def year_to_s
    <<EOS
#{year}

#{month}              #{month}              #{month}
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{weeks_row_1}

#{month}              #{month}              #{month}
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{weeks_row_2}

#{month}              #{month}              #{month}
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{weeks_row_3}

#{month}              #{month}              #{month}
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{weeks_row_4}
EOS
  end
end

end
