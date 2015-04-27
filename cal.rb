#!/usr/bin/env ruby

require_relative 'lib/month'

args = ARGV
month = ARGV[0].to_i
year = ARGV[1].to_i

m = Month.new(month, year)

def input_error
  puts "Date not in acceptable format/range."
end

if args.empty? || month > 13 || year > 3000 || year < 1800 || month.to_s.length > 2
  input_error
else
  puts m.to_s
end
