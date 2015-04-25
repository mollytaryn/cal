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

  def month_length_non_leap_year
    month_length = {
      1 => 31,
      2 => 28,
      3 => 31,
      4 => 30,
      5 => 31,
      6 => 30,
      7 => 31,
      8 => 31,
      9 => 30,
      10 => 31,
      11 => 30,
      12 => 31
    }
  end

  def days
    days = (1..31)
    arr = days.to_a
    week_1 = arr[0..6].join("  ")
    week_2a = arr[7..8].join("  ")
    week_2b = arr[9..13].join(" ")
    week_3 = arr[14..20].join(" ")
    week_4 = arr[21..27].join(" ")
    week_5 = arr[28..34].join(" ")
    # week_6 = arr[35..36].join(" ")
    string = "#{week_1}\n #{week_2a} #{week_2b}\n#{week_3}\n#{week_4}\n#{week_5}"
  end

  def to_s
    <<EOS
    #{month_name} #{year}
Su Mo Tu We Th Fr Sa
 #{days}
EOS
  end
end
