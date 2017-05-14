class Support::Parser
  # Parsing utilities
  def self.parse_orders_from_file(file)
    ::File.foreach( file.path ).with_index.map do |line, index|
      # ignores header
      next if index.zero?
      # removes line breaks
      line.tr "\n", ''
      # splits on tabs
      line.split("\t")
    end[1..-1]
  end
end