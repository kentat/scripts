#! /usr/bin/env ruby

require '~/scripts/lib/filejpg'
# require 'exifr'
# require 'geocoder_jp'
# require 'pp'
# require 'fileutils'

filejpg = FileJpg.new


filejpg.renamefiles()
filejpg.putindir()




# # puts "hello"

# dir = ""

# Dir::foreach('.') {|f|
#   if File::ftype(f) == "file"
#     if f.include?(".jpg")
# 	    puts "#{f}"
#  	    if File.exists?("#{f}") then
#  	    else
#  	    	FileUtils.mv( "#{f}", f.tr(" ","_"), {:force => true} )
# 		  	f.tr!(" ","_")
#  	    end
# 	  	@exif = EXIFR::JPEG.new("#{f}")
#  	    # FileUtils.cp( "#{f}", f.tr(" ","_") )
#  	#     b = f
#  	#     b.tr!(" ","_")
# 		# b.tr!("¥(3¥)","")
# 		# # f.tr!('(4)','')
# 		# f.tr!('(5)','')
# 		# f.tr!('(6)','')
# 		# f.tr!('(7)','')
# 		# f.tr!('(8)','')
# 		# f.tr!('(9)','', {:force => true})
# 		# f.tr!('(3)','', {:force => true})
# 		# f.tr!("(4)","", {:force => true})
# 		# f.tr!("(5)","", {:force => true})
# 		# f.tr!("(6)","", {:force => true})
# 		# f.tr!("(7)","", {:force => true})
# 		# f.tr!("(8)","", {:force => true})
# 		# f.tr!("(9)","", {:force => true})
# 		# # f.tr!("(3)","")
# 		# f.tr!(" ","_")
# 		# f.tr!(" ","_")
# 		# f.tr!(" ","_")
# 		# f.tr!(" ","_")
#  		#FileUtils.mv( "#{f}", "#{b}", {:force => true} )


#  	    	# pp EXIFR::JPEG::new("#{f}").to_hash
#  	    if @exif.date_time.nil? then
#  	    else
# 	    	# puts @exif.date_time.to_formatted_s("%Y-%m-%d")+"#{f}"
# 	    	# puts @exif.date_time
# 	    	puts @exif.date_time.strftime("%Y-%m-%d")
# 			if File.exists?(@exif.date_time.strftime("%Y-%m-%d")) then
# 			else
# 				Dir::mkdir(@exif.date_time.strftime("%Y-%m-%d"),0777 )
# 			end
# 				dir = @exif.date_time.strftime("%Y-%m-%d")
# 				puts "dir "+dir+" file "+"#{f}"
# 	    	FileUtils.mv( "#{f}", dir, {:force => true} )
#  	    end
#     end
#   end
# }

