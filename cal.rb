#!/usr/bin/env ruby

require_relative 'lib/month'
require_relative 'lib/year'

args = ARGV
month = ARGV[0].to_i
year = ARGV[1].to_i

m = Month.new(month, year)
y = Year.new(year)

def input_error
  puts "Date not in acceptable format/range."
end

if args.empty? || month > 13 || year > 3000 || year < 1800
  input_error
else
  puts m.to_s
end
