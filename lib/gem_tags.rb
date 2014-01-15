require 'celluloid'

class GemTags
  include Celluloid

  attr_reader :paths
  def initialize
  end

  def traverse_gemfile
    if File.exist? './Gemfile'
      require 'bundler'
      @paths = Bundler.load.specs.map(&:full_gem_path).join(' ')
    end
  end

  def generate
    system "ctags -R -f .gemtags #{paths}"
  end
end
