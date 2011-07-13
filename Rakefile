require 'rubygems'
require 'rake'
require 'tasks/toc/body_template'
require 'tasks/toc/header_template'
require 'tasks/toc/file_writer'

task :deploy do

end

desc "run specs using telescope"
task :specs do
  specs_dir = Dir.new File.join(Dir.pwd, "specs")
  Dir.chdir(specs_dir.path) do
    specs_dir.each do |file|
      sh "tsc #{File.join(Dir.pwd, file)}" if file =~ /_spec.lua$/
    end
  end
end

file 'bin/' do
  Dir.mkdir(binary_folder_path)
end

desc "remove the contents of the binary directory"
task :clean => 'bin/' do
  FileUtils.remove_dir(binary_folder.path)
  Dir.mkdir(binary_folder_path)
end

desc "copy app into world of warcraft folder"
task :copy => 'bin/' do
  sh "cp -R app/ bin/"
end

desc "generate toc file"
task :generate do
  Toc::FileWriter.new(header, body, binary_folder).create
end

desc "deploy application"
task :deploy => [:generate, :copy] do
  sh "cp -R bin/ #{wow_addon_path}"
end

def wow_addon_path
  '/Applications/World\ of\ Warcraft/Interface/AddOns/Incoming/'
end

def body
  Toc::BodyTemplate.new(app_directory)
end

def header
  toc_header_template_path = File.join( Dir.pwd, 'tasks/templates')
  options = {}
  options[:interface] = "40200"
  options[:title] = "INCOMING"
  options[:author] = "Avelliance"
  options[:version] = "0.10"
  options[:Notes] = "A Simple addon"
  options[:eMail] = "avelliance@gmail.com"
  options[:URL] = "nil"
  options[:DefaultState] = "Enabled"
  options[:LoadOnDemand] = 0
  Toc::HeaderTemplate.new("Incoming.toc", toc_header_template_path, options)
end

def app_directory
  Dir.new(File.join(Dir.pwd, 'app'))
end

def binary_folder
  Dir.new(binary_folder_path)
end

def binary_folder_path
  File.join(Dir.pwd, 'bin')
end
