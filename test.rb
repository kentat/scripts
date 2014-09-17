#! /usr/bin/env ruby

# require '~/scripts/lib/filejpg'
# require 'exifr'
# require 'geocoder_jp'
# require 'pp'
# require 'fileutils'

dir = "aaa"


if File.exist?(dir)
	puts "find!"
else
	puts "not find!"
end

if File.exist?("dir*")
	puts "find!"
else
	puts "not find!"
end

if Dir.exist?(dir+"*")
	puts "find!"
else
	puts "not find!"
end

if Dir.exist?(dir+"*")
	puts "find!"
else
	puts "not find!"
end

if Dir.exist?("aaa*")
	puts "find!"
else
	puts "not find!"
end

if Dir.exist?("aaaa")
	puts "find!"
else
	puts "not find!"
end

if Dir.glob("aaaa") != []
	puts "find!"
else
	puts "not find!"
end

if Dir.glob("aaa*") != []
	puts "find!"
else
	puts "not find!"
end

if Dir.glob("aaa") != []
	puts "find!"
else
	puts "not find!"
end

if Dir.glob("aab") != []
	puts "find!"
else
	puts "not find!"
end

# [01:08:11 sandbox]$ test.rb 
# not find!
# not find!
# not find!
# not find!
# not find!
# find!
# find!
# find!
# not find!
# not find!




