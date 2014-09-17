#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
require 'rubygems'
require 'exifr'
require 'geocoder_jp'
require 'pp'
require 'fileutils'


# puts EXIFR::JPEG::new(ARGV[0]).date_time

# pp EXIFR::JPEG::new(ARGV[0]).to_hash

# http://qiita.com/nysalor/items/fa339292ad68321d69ab

@exif = EXIFR::JPEG.new(ARGV[0])
# data = EXIFR::JPEG.new(ARGV[0])


# pp EXIFR::JPEG::new('PIC01.JPG').to_hash
latitude = @exif.gps.latitude.to_s
longitude = @exif.gps.longitude.to_s

# puts ofile

# 住所取得、出力
geo = GeocoderJP.get(latitude + ',' + longitude)
address = geo["google_maps"]
#puts address


# ifile = ARGV[0]
ofile = @exif.date_time.strftime("%Y-%m-%d_%H.%M.%S") + '_' + address + '_' + ARGV[0]

puts ofile

# FileUtils.cp( ifile, ofile )



__END__