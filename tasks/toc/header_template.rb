module Toc
  class HeaderTemplate
    attr_reader :title
    def initialize(title, path, options)
      @title = title
      @path = path
      @options = options
    end

    def to_s
      @options.collect do |key, value|
        "## #{key}: #{value}"
      end.join("\n")
    end
  end
end
