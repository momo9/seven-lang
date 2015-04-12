#!/usr/bin/env ruby

file_name = ARGV[0]
pattern = ARGV[1]

File.open file_name do |args|
    args.each do |e|
        puts e if e.match Regexp.new(pattern)
    end
end
