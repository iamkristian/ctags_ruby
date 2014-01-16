class GemTags

  def initialize
  end

  def generate
    traverse_gemfile
    system ctags_expression
  end

  private

  def ctags_expression
    "ctags -R -f .gemtags #{@paths}"
  end

  def traverse_gemfile
    if File.exist? gem_file
      require 'bundler'
      @paths = Bundler.load.specs.map(&:full_gem_path).join(' ')
    end
  end

  def gem_file
    './Gemfile'
  end
end
