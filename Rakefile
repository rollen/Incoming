require 'rubygems'
require 'rake'

task :deploy do

end

desc "run specs using telescope"
task :specs do
  specs_dir = Dir.new File.join(Dir.pwd, "specs")
  Dir.chdir(specs_dir.path) do
    specs_dir.each do |file|
      sh "tsc #{File.join(specs_dir.path, file)}" if file =~ /Spec.lua$/
    end
  end
end

desc "copy app into world of warcraft folder"
task :copy do
end

desc "generate toc file"
task :generate do
end

desc "deploy application"
task :deploy => [:generate, :copy] do
end
