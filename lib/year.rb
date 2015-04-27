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

end
