module Toc
  class FileWriter
    def initialize(toc_header, toc_body, target_folder)
      @toc_header = toc_header
      @toc_body = toc_body
      @target_folder = target_folder 
    end

    def create
      Dir.chdir(@target_folder.path) do
        File.open(@toc_header.title, 'w') do |io|
          io.write(@toc_header.to_s)
          io.write("\n\n")
          io.write(@toc_body.to_s)
        end
      end
    end
  end
end
