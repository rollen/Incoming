module Toc
  class BodyTemplate
    def initialize(directory)
      @directory = directory
    end

    def to_s
      return strip_prefixes_from_files( traverse_root_to_get_file_names ).join("\n")
    end

    private
    def traverse_root_to_get_file_names
      directories = [@directory]
      files = []
      while(directories.size != 0) do
        current_directory = directories.shift
        current_directory.each do |entry|
          next if entry == '.' or entry == '..'
          file_name = File.join(current_directory.path, entry)
          if(File.directory?(file_name))
            directories << Dir.new(file_name)
          else
            files << file_name if file_name =~ /.lua$/
          end
        end
      end
      return files
    end

    def strip_prefixes_from_files(files)
      regexp = Regexp.new("#{@directory.path}/(.+)")
      files.collect do |file|
        regexp.match(file)[1]
      end
    end
  end
end
