#!/usr/bin/env ruby
# frozen_string_literal: true

# Quick script that calculates the longest line in a given file.
# Used to calculate the minimum byte size needed to return to have at
# least one full entry.
# ( Calculated as longest_line x 2 ).
# For speed reasons, these values are then hardcoded in the gem, but in the future
# might need to be just set to an arbitrarily high number like 256 bytes.

longest_line = ''
longest_line_num = 1

File.readlines(ARGV[0]).each_with_index do |line, i|
  if line.length >= longest_line.length
    longest_line = line
    longest_line_num = i + 1
  end
end

puts " Longest line number: #{longest_line_num}"
puts " Longest line length: #{longest_line.length}"
puts "Longest Line content: #{longest_line}"
