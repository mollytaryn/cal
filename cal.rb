#!/usr/bin/env ruby

require_relative 'lib/month'
require_relative 'lib/year'

args = ARGV
month = ARGV[0].to_i
year = ARGV[1].to_i

m = Month.new(month, year)
y = Year.new(ARGV[0].to_i)

def input_error
  puts "Date not in acceptable format/range."
end

if args.length == 2 && month <= 13 && year <= 3000 && year >= 1800
  puts m.to_s
elsif args.length == 1
  puts y.to_s
else
  input_error
end
