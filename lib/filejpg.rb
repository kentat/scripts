require 'fileutils'
require 'find'
require 'exifr'
require 'pp'

class FileJpg
	attr_reader :dir, :list
	attr_accessor :title, :price

	def initialize()
		# ファイルリスト作成
		@list = []
	end

	def renamefiles()
		# Find.find(File.expand_path(src)) { |path|
		Find.find("./") { |sf|
			if /.(jpg|JPG|jpeg)\z/ =~ sf
			  	df = sf.gsub(" ","_")
			    puts "sf:" + sf + "  --->  df:" + df
			    FileUtils.mv(sf, df) unless File.exist?(df)
			    FileUtils.chmod(0666,df)
			    FileUtils.chown("kentaro","wheel",df)
			    @list << df
			end
		}
	end

	def putindir()
		# 振り分け
		@list.sort.each { |path|
		#   image = ExtExif.new(path)
		# puts path
		exif = EXIFR::JPEG.new(path)
		unless exif.date_time.nil?
			# unless /(FinePix|mini|HDR|IS12|EOS)/ =~ exif.model
		 	#  		puts path
		 	#  		pp(EXIFR::JPEG::new(path).to_hash)
			# else
		 	#  		dir = exif.date_time.strftime("%Y-%m-%d") unless exif.date_time.strftime.nil?
			dir = File.basename(path)[0..9]
			# end
		else
			dir = File.basename(path)[0..9]
			# exif.date_time.strftime("%Y-%m-%d")
			# puts "dir -- "+dir
			# pp(EXIFR::JPEG::new(path).to_hash)
		end
		# puts dir
		FileUtils.mkdir(dir) unless Dir.exists?(dir) 
		FileUtils.chmod(0755,dir) 
	  FileUtils.chown("kentaro","wheel",dir)
		dst = dir+"/"+File.basename(path)
		FileUtils.mv(path,dst) unless File.exist?(dst)
		# puts path + "   " + exif.date_time.strftime("%Y-%m-%d") 
		# puts @exif.date_time.strftime("%Y-%m-%d") unless @exif.date_time.nil?
		#   foldername = image["MetadataDate"][0,10].split(/:/).join
		#   folderpath = dst + foldername
		#   Dir.mkdir(folderpath) unless File.exist?(folderpath)
		#   FileUtils.cp(path, folderpath)
		}
	end


end





# # フォルダ指定
# src = "./"
# dst = "./image/"

# # ファイルリスト作成
# list = []
# # Find.find(File.expand_path(src)) { |path|
# Find.find(src) { |sf|
#   if /.(jpg|JPG|jpeg)\z/ =~ sf
#   	df = sf.gsub(" ","_")
#     puts "sf:" + sf + "  --->  df:" + df
#     FileUtils.mv(sf, df) unless File.exist?(df)
#     FileUtils.chmod(0666,df)

#   	# print path + "   "
# 	# newname = path.gsub(/^(\d+)/, sprintf("%03d", $1.to_i))
#  #    list << path
#   	# @exif = EXIFR::JPEG.new(path)
#   	# puts path + "   " + @exif.date_time.strftime("%Y-%m-%d") unless @exif.date_time.nil?
#   end
# }


# Dir.glob("*.html") do |filename|
#   newname = filename.gsub(/^(\d+)/, sprintf("%03d", $1.to_i))
#   FileUtils.mv(filename, newname)
# end


