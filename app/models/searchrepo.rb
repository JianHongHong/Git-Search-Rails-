
class Searchrepo
    include HTTParty    
    debug_output STDOUT
    @@url = "https://api.github.com/search/repositories"

    def find(name)
       @results = HTTParty.get(@@url, query: { q: name }).parsed_response
    end

end
