require 'spec_helper'
require 'ctags_ruby/tags'

describe Tags do

  let(:filename) { ".fish" }
  let(:mask) { "*.cod" }
  let(:tags) { Tags.new(filename, mask) }

  it "sets filename" do
    tags.filename.should == filename
  end

  it "sets mask" do
    tags.mask.should == mask
  end
end
