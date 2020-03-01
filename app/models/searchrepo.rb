
class Searchrepo < ApplicationRecord
    include HTTParty    
    @@url = "https://api.github.com/search/repositories"


    # Query repo 
    def find(name)
       @results = HTTParty.get(@@url, query: { q: name }).parsed_response
    end

end
