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
    jan = Month.new(1, @year)
    jan_arr = jan.days.split("\n")
    jan_week_1 = jan_arr[0].ljust(20)
    jan_week_2 = jan_arr[1].ljust(20)
    jan_week_3 = jan_arr[2].ljust(20)
    jan_week_4 = jan_arr[3].ljust(20)
    jan_week_5 = jan_arr[4].ljust(20)
    jan_week_6 = jan_arr[5].ljust(20).rstrip

    feb = Month.new(2, @year)
    feb_arr = feb.days.split("\n")
    feb_week_1 = feb_arr[0].ljust(20)
    feb_week_2 = feb_arr[1].ljust(20)
    feb_week_3 = feb_arr[2].ljust(20)
    feb_week_4 = feb_arr[3].ljust(20)
    feb_week_5 = feb_arr[4].ljust(20)
    feb_week_6 = feb_arr[5]

    march = Month.new(3, @year)
    march_arr = march.days.split("\n")
    march_week_1 = march_arr[0].ljust(20)
    march_week_2 = march_arr[1].ljust(20)
    march_week_3 = march_arr[2].ljust(20)
    march_week_4 = march_arr[3].ljust(20)
    march_week_5 = march_arr[4].ljust(20).rstrip
    march_week_6 = march_arr[5]

    quarter_1 =
      <<EOS
#{jan_week_1}  #{feb_week_1}  #{march_week_1}
#{jan_week_2}  #{feb_week_2}  #{march_week_2}
#{jan_week_3}  #{feb_week_3}  #{march_week_3}
#{jan_week_4}  #{feb_week_4}  #{march_week_4}
#{jan_week_5}  #{feb_week_5}  #{march_week_5}
#{jan_week_6}
EOS
  end

  def quarter_2
    quarter_1 = ""
    april = Month.new(4, @year)
    april_arr = april.days.split("\n")
    april_week_1 = april_arr[0]
    april_week_2 = april_arr[1]
    april_week_3 = april_arr[2]
    april_week_4 = april_arr[3].ljust(20)
    april_week_5 = april_arr[4].ljust(20)
    april_week_6 = april_arr[5].ljust(20).rstrip

    may = Month.new(5, @year)
    may_arr = may.days.split("\n")
    may_week_1 = may_arr[0]
    may_week_2 = may_arr[1]
    may_week_3 = may_arr[2]
    may_week_4 = may_arr[3].ljust(20)
    may_week_5 = may_arr[4].ljust(20)
    may_week_6 = may_arr[5]

    june = Month.new(6, @year)
    june_arr = june.days.split("\n")
    june_week_1 = june_arr[0]
    june_week_2 = june_arr[1]
    june_week_3 = june_arr[2]
    june_week_4 = june_arr[3]
    june_week_5 = june_arr[4]
    june_week_6 = june_arr[5]

    quarter_2 =
      <<EOS
#{april_week_1}  #{may_week_1}  #{june_week_1}
#{april_week_2}  #{may_week_2}  #{june_week_2}
#{april_week_3}  #{may_week_3}  #{june_week_3}
#{april_week_4}  #{may_week_4}  #{june_week_4}
#{april_week_5}  #{may_week_5}  #{june_week_5}
#{april_week_6}
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
#{quarter_2}
        July                 August              September
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa

      October               November              December
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa

EOS
  end
end
