#!/usr/bin/env ruby

a = (0...16)

a.each_slice 4 do |args|
    p args
end
