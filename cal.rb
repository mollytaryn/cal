#!/usr/bin/env ruby

require_relative 'lib/month'

args = ARGV
month = ARGV[0]
year = ARGV[1]

m = Month.new(month, year)

def input_error
  puts "Date not in acceptable format/range."
end

if args.empty? || month.to_i > 13 || year.to_i > 3000 || year.to_i < 1800 || month.length > 2
  input_error
else
  puts m.to_s
end
