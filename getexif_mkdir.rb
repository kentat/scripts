#! /usr/bin/ruby
require 'rubygems'
require 'exifr'
require 'fileutils'

# http://qiita.com/nysalor/items/fa339292ad68321d69ab

@exif = EXIFR::JPEG.new(ARGV[0])

ifile = ARGV[0]
ofile = @exif.date_time.strftime("%Y-%m-%d_%H%M%S") + '_' + ARGV[0]

FileUtils.cp( ifile, ofile )



__END__