class Prime
  def self.first limit=1
    limit = Integer(limit)
    Prime.gather(limit) if limit > 0
  end

  def self.prime? number
    number = Integer(number)
    return false if number < 2

    trial_divisions = (2..Math.sqrt(number).to_i)
    trial_divisions.select { |d| number % d == 0 }.empty?
  end

  private

  def self.gather limit
    return 2 if limit == 1

    range = 2...limit**2
    range.select { |i| prime? i }.first(limit)
  end
end
