class Tags

  attr_reader :filename, :mask
  def initialize(filename = ".tags", mask = '*.rb')
    @filename, @mask = filename, mask
  end

  def generate
    system find_expression
  end

  def find_expression
    "find . -name '#{mask}' | ctags -f #{filename} -L -"
  end
end
