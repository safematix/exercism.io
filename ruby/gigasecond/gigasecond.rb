# class Gigasecond
class Gigasecond
  def self.from(date)
    date + (10**9)
  end
end

module BookKeeping
  VERSION = 6
end