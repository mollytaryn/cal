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


  def quarter_1
    quarter_1_array = []
    jan = Month.new(1, @year)
    jan_arr = jan.days.split("\n")
    feb = Month.new(2, @year)
    feb_arr = feb.days.split("\n")
    march = Month.new(3, @year)
    march_arr = march.days.split("\n")
    quarter_1_array << jan_arr << feb_arr << march_arr
    quarter = quarter_1_array[0].zip(quarter_1_array[1], quarter_1_array[2])
    # quarter_string = quarter.scan(/ .{64}/).join("\n")

    x = "  "
    week_1 = quarter[0].join("  ").rstrip
    week_2 = quarter[1].join("  ").rstrip
    week_3 = quarter[2].join("  ").rstrip
    week_4 = quarter[3].join("  ").rstrip
    week_5 = quarter[4].join("  ").length
    # week_5 = quarter[4].join("#{x}")
    week_6 = quarter[5].join("  ").rstrip

    quarter_1 =
      <<EOS
#{week_1}
#{week_2}
#{week_3}
#{week_4}
#{week_5}
#{week_6}
EOS
  end

  def year_to_s
    <<EOS
                       #{year}

      January               February               March
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{quarter_1}
       April                  May                   June
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa

        July                 August              September
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa

      October               November              December
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa

EOS
  end
end
