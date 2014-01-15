require 'celluloid'

class Tags
  include Celluloid

  def initialize()
  end

  def generate
    system "find . -name '*.rb' | ctags -f .tags -L -"
  end
end
