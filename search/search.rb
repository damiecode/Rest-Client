# frozen_string_literal: true

require 'rest-client'

# Search
class Search
  def search
    puts 'What do you want to search for?'
    search_input = gets.chomp.to_s
    search_input.gsub(' ', '+')
    response = RestClient.get "http://bing.com/search?q=#{search_input}"
    File.open(search_input, 'w') do |file|
      file.write(response.body)
    end
  end
end