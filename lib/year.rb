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
    if jan_arr.length < 6
      jan_arr << ""
    end
    feb = Month.new(2, @year)
    feb_arr = feb.days.split("\n")
    if feb_arr.length < 6
      feb_arr << ""
    end
    march = Month.new(3, @year)
    march_arr = march.days.split("\n")
    if march_arr.length < 6
      march_arr << ""
    end
    quarter_1_array << jan_arr << feb_arr << march_arr
    quarter_1 = quarter_1_array[0].zip(quarter_1_array[1], quarter_1_array[2])

    week_1 = quarter_1[0].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_2 = quarter_1[1].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_3 = quarter_1[2].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_4 = quarter_1[3].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_5 = quarter_1[4].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_6 = quarter_1[5].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip

    quarter_1 = "#{week_1}\n#{week_2}\n#{week_3}\n#{week_4}\n#{week_5}\n#{week_6}".rstrip
  end

  def quarter_2
    quarter_2_array = []
    april = Month.new(4, @year)
    april_arr = april.days.split("\n")
    if april_arr.length < 6
      april_arr << ""
    end
    may = Month.new(5, @year)
    may_arr = may.days.split("\n")
    if may_arr.length < 6
      may_arr << ""
    end
    june = Month.new(6, @year)
    june_arr = june.days.split("\n")
    if june_arr.length < 6
      june_arr << ""
    end
    quarter_2_array << april_arr << may_arr << june_arr
    quarter_2 = quarter_2_array[0].zip(quarter_2_array[1], quarter_2_array[2])

    week_1 = quarter_2[0].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_2 = quarter_2[1].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_3 = quarter_2[2].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_4 = quarter_2[3].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_5 = quarter_2[4].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_6 = quarter_2[5].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip

    quarter_2 = "#{week_1}\n#{week_2}\n#{week_3}\n#{week_4}\n#{week_5}\n#{week_6}".rstrip
  end

  def quarter_3
    quarter_3_array = []
    july = Month.new(7, @year)
    july_arr = july.days.split("\n")
    if july_arr.length < 6
      july_arr << ""
    end
    aug = Month.new(8, @year)
    aug_arr = aug.days.split("\n")
    if aug_arr.length < 6
      aug_arr << ""
    end
    sept = Month.new(9, @year)
    sept_arr = sept.days.split("\n")
    if sept_arr.length < 6
      sept_arr << ""
    end
    quarter_3_array << july_arr << aug_arr << sept_arr
    quarter_3 = quarter_3_array[0].zip(quarter_3_array[1], quarter_3_array[2])

    week_1 = quarter_3[0].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_2 = quarter_3[1].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_3 = quarter_3[2].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_4 = quarter_3[3].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_5 = quarter_3[4].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_6 = quarter_3[5].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip

    quarter_3 = "#{week_1}\n#{week_2}\n#{week_3}\n#{week_4}\n#{week_5}\n#{week_6}".rstrip
  end

  def quarter_4
    quarter_4_array = []
    oct = Month.new(10, @year)
    oct_arr = oct.days.split("\n")
    if oct_arr.length < 6
      oct_arr << ""
    end
    nov = Month.new(11, @year)
    nov_arr = nov.days.split("\n")
    if nov_arr.length < 6
      nov_arr << ""
    end
    dec = Month.new(12, @year)
    dec_arr = dec.days.split("\n")
    if dec_arr.length < 6
      dec_arr << ""
    end
    quarter_4_array << oct_arr << nov_arr << dec_arr
    quarter_4 = quarter_4_array[0].zip(quarter_4_array[1], quarter_4_array[2])

    week_1 = quarter_4[0].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_2 = quarter_4[1].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_3 = quarter_4[2].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_4 = quarter_4[3].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_5 = quarter_4[4].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip
    week_6 = quarter_4[5].map{ |d| d.to_s.ljust(20) }.join("  ").rstrip

    quarter_4 = "#{week_1}\n#{week_2}\n#{week_3}\n#{week_4}\n#{week_5}\n#{week_6}".rstrip
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
#{quarter_3}

      October               November              December
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{quarter_4}
EOS
  end
end
