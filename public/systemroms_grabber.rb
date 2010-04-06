#!/usr/bin/env ruby
require 'open-uri'
require 'rubygems'
require 'zip/zip'
class SystemromsGrabber
  BLUEMSX_LOCATION = "http://www.vik.cc/bluemsx/download.html"
  ROM_DIR = File.expand_path("~/tmp/romdir")
  def self.grab_from_bluemsx
    FileUtils.mkdir_p(ROM_DIR)
    doc = open(BLUEMSX_LOCATION).read
    if (doc =~ /(#{File.join(BLUEMSX_LOCATION.gsub("/download.html",'') + '/.+blueMSXv.+full\.zip')})"/)
      bluemsx_full_archive = $1
      Zip::ZipFile.open(open(bluemsx_full_archive).path) do |zip_file|
        zip_file.each do |f|
          f_basename = File.basename(f.name)
          f_extension = f_basename.split('.').last
          if (f_extension == 'rom' && f_extension != f_basename)
            puts "Found .rom: #{f_basename}"
            f_path=File.join(ROM_DIR, f_basename)
            # FileUtils.mkdir_p(File.dirname(f_path))
            unless File.exist?(f_path)
              puts "  Extracting '#{f_basename}' to '#{f_path}'"
              zip_file.extract(f, f_path)
            else
              puts "  File '#{f_basename}' ('#{f.name}') already exists in '#{f_path}'!"
            end
          else
            puts "Not a .rom, skipping: #{f_basename}"
          end
        end
      end
    else
      puts "Could not locate the download on #{BLUEMSX_LOCATION}. Please locate them yourself and download the zip to #{File.dirname(File.expand_path(__FILE__))}"
    end
  end
end
grabber = SystemromsGrabber.grab_from_bluemsx