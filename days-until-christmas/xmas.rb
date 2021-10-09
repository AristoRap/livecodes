require 'date'

def days_until_xmas(someday = Date.today)
  xmas_date = Date.new(someday.year, 12, 25)
  xmas_date = xmas_date.next_year if xmas_date < someday
  return (xmas_date - someday).to_i
end

# We want to display "true" to test our method (TDD)
puts days_until_xmas == 266 #change this number by the number of days until xmas
puts days_until_xmas(Date.new(2018,12,25)) == 0
puts days_until_xmas(Date.new(2018,12,26)) == 364
