require "file_type_detector/version"
require "tempfile"

module FileTypeDetector
  class Extension
    JPG_VALID_SIG = 'ffd8ffe0'
    JPG_VALID_SIG_EXIF = 'ffd8ffe1'
    PNG_VALID_SIG = '89504e470d0a1a0a'

    def self.extension(path_or_file_object)
      if path_or_file_object.is_a?(File) || path_or_file_object.is_a?(Tempfile)
        extension = new(path_or_file_object).detect
        path_or_file_object.close
        extension
      elsif !path_or_file_object.bytes.include?(0) && File.exist?(path_or_file_object)
        file = File.open(path_or_file_object, 'r')
        extension(file)
      elsif path_or_file_object.is_a?(String)
        file = Tempfile.new('temp')
        file.write(path_or_file_object)
        file.rewind
        ext = extension(file)
        file.unlink
        ext
      else
        raise "Expecting a file object or path to a file"
      end
    end

    def initialize(file)
      @file = file
    end

    def detect
      sig = @file.readpartial(20).unpack("H*").first
      if sig.match(JPG_VALID_SIG)
       '.jpg'
      elsif sig.match(PNG_VALID_SIG)
        '.png'
      else
        raise "Unsupported file type"
      end
    end
  end
end
