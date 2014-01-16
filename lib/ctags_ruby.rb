require "ctags_ruby/version"
require "ctags_ruby/gem_tags"
require "ctags_ruby/tags"

module CtagsRuby
  def self.generate
    do_tags
    do_gem_tags
  end

  private

  def self.do_tags
    tags = Tags.new
    tags.generate
  end

  def self.do_gem_tags
    gem_tags = GemTags.new
    gem_tags.generate
  end
end
