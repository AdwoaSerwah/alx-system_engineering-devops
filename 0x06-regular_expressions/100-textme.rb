#!/usr/bin/env ruby
pattern = /\[from:([^\]]+)\] \[to:([^\]]+)\] \[flags:([^\]]+)\]/
log_line = ARGV[0]
match_data = log_line.match(pattern)

if match_data
  sender = match_data[1]
  receiver = match_data[2]
  flags = match_data[3]
  puts "#{sender},#{receiver},#{flags}"
end
