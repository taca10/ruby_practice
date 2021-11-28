require 'date'
t = Date.today
first_date = Date.new(t.year, t.month, 1)
calender_date_array = (first_date.day..Date.new(t.year, t.month, -1).day).to_a
padding = [nil] * first_date.wday
p padding
calendar_table = (padding + calender_date_array).each_slice(7)
date_rows = calendar_table.map do |row|
  row.map { |date_num| date_num.to_s.ljust(2) }.join(' ')
end
puts date_rows
week_row = %w[Su Mo Tu We Th Fr Sa].join(' ')
month_row = "#{t.month}  #{t.year}"
# puts month_row.center(week_row.size), week_row, date_rows
