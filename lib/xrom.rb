require "Xrom/version"

  # Your code goes here...
class Xrom

  def initialize(opts={})
  	@opts = opts
    @input = get_input(opts[:input], opts[:src_type])
    @output = get_output(opts[:output], opts[:dst_type])
  end

  def get_input(path=nil, src_type='odex')
    ext = File.extname(path) 
    dir = File.dirname(path)

    if ext.empty?
      ext = src_type
      files = Dir.glob "#{dir}/**/*.#{ext}".map do |f|
        Xrom::Files.const_get(ext).new(f)
      end
      return files
    end
    return []<<Xrom.Files.const_get(ext).new(path)
  end

  def get_output(path=nil, dst_type='smali')
    ext = File.extname(path) || dst_type
    if ext.empty?
      file = nil
      dir = path
    else
      file = File.basename(path)
      dir = File.dirname(path)
    end
    return {:dir=>dir,:file=>file, :type=>ext}
  end

  def hack
    @input.each do |input|
      input.convert @output  
    end
  end
end
