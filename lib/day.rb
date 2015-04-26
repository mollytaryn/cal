class Day
  attr_reader :month, :year, :day

  def initialize(month, year)
    @month = month
    @year = year
  end

  def start_day
    if month < 3
      @month += 12
      @year -= 1
    end

    m = @month
    y = @year
    q = 1

    @day = (q + (((m + 1) * 26) / 10).floor + y + (y / 4).floor + 6 * (y / 100).floor + (y / 400).floor) % 7
    @day
  end
end
