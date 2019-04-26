#Testing time formatting
# time = Time.new
# # Components of a Time
# time.inspect
# puts "#{time.day.to_s}/#{time.month.to_s}/#{time.year.to_s}"    # => Year of the date
# puts    # => Month of the date (1 to 12)
# puts    # => Day of the date (1 to 31 )

require 'terminal-table'
table = Terminal::Table.new do |t|
    t << ['One', 1]
    t << :separator
    t.add_row ['Two', 2]
    t.add_separator
    t.add_row ['Three', 3]
  end

  puts table
  