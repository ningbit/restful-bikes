require 'typhoeus'

class Parser

  def self.parse(endpoint_url)
  end

  def initialize(json_path)
    Typhoeus.get(json_path)
  end
end