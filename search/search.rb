# frozen_string_literal: true

require 'rest-client'
# Search
class Search
  def initialize
    @@url = 'http://bing.com'
  end

  def search
    puts 'What do you want to search for?'
    search_input = gets.chomp.to_s
    response = RestClient.get @@url, { :q => search_input }
    File.open(search_input, 'w') do |file|
      file.write(response)
    end
  end
end

search_obj = Search.new 
