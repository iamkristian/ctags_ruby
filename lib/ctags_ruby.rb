require "ctags_ruby/version"
require "ctags_ruby/gem_tags"
require "ctags_ruby/tags"

module CtagsRuby
  def self.generate
    tags = Tags.new
    tags.generate!
    gem_tags = GemTags.new
    gem_tags.traverse_gemfile!
    gem_tags.generate!
  end
end
