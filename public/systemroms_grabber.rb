#!/usr/bin/env ruby
require 'open-uri'
require 'rubygems'
require 'zip/zip'
require 'digest/sha1'
module MyZipfile
  def extract_with_comments(f, f_path, indentation_level=0)
    if File.exist?(f_path)
      puts "#{' ' * indentation_level}Already exists at '#{f_path}'!"
      return false
    end
    FileUtils.mkdir_p(File.dirname(f_path))
    puts "#{' ' * indentation_level}Extracting to '#{f_path}'"
    extract(f, f_path)
  end
end

class SystemromsGrabber
  BLUEMSX_LOCATION = "http://www.vik.cc/bluemsx/download.html"
  ROM_DIR = File.expand_path("~/tmp/romdir_test")
  SHA1_ROM_DIR = File.expand_path("~/tmp/romdir_test/sha1")
  MIXED_ROM_DIR = File.expand_path("~/tmp/romdir_test/mixed")
  SILENTLY_SKIP = %w[mcf bmp xml shortcuts chm dll txt ini exe config]
  @@skipped_files = []
  def self.grab_zip_from_bluemsx
    puts "Reading #{BLUEMSX_LOCATION}"
    doc = open(BLUEMSX_LOCATION).read
    puts "Searching for archive location."
    if (doc =~ /(#{File.join(BLUEMSX_LOCATION.gsub("/download.html",'') + '/.+blueMSXv.+full\.zip')})"/)
      puts "Archive located at: #{$1}"
      if File.exist?(archive_path = File.expand_path(File.basename($1)))
        puts "Archive already downloaded as: #{archive_path}"
        extract_archive(archive_path)
      else
        puts "Downloading archive. (This may take a while..)"
        archive = open($1)
        extract_archive(archive.path)
      end
    else
      puts "Could not locate the download on #{BLUEMSX_LOCATION}. Please locate them yourself and download the zip to #{File.dirname(File.expand_path(__FILE__))}"
    end
  end

  def self.extract_archive(filename)
    puts "Extracting #{filename}"
    Zip::ZipFile.open(filename) do |zip_file|
      puts zip_file.extend MyZipfile
      zip_file.each do |f|
        f_basename = File.basename(f.name)
        f_extension = f_basename.split('.').last
        if (f_extension.downcase == 'rom' && f_extension != f_basename)
          puts "Found .rom: #{f_basename} ('#{f.name}')"
          sha1 = Digest::SHA1.hexdigest(zip_file.read(f))
          puts "  Sha1: #{sha1}"
          sha1_path=File.join(SHA1_ROM_DIR,sha1)
          f_path=File.join(ROM_DIR, f_basename.gsub(/.rom$/,"_#{sha1}.rom"))
          mixed_path=File.join(MIXED_ROM_DIR, sha1 + '_' + f_basename)

          zip_file.extract_with_comments(f, f_path,3)
          zip_file.extract_with_comments(f, mixed_path,3)
          zip_file.extract_with_comments(f, sha1_path,3)
        else
          puts "Not a .rom, skipping: #{f_basename}" unless SILENTLY_SKIP.include?(f_extension)
          @@skipped_files << f_basename
        end
      end
    end
    # puts "Skipped files: #{@@skipped_files.uniq.join(", ")}"
  end
end
puts "Initializing grabber"
grabber = SystemromsGrabber.grab_zip_from_bluemsx
puts "Grab complete"