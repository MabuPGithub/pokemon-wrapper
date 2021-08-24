# README

API Wrapper for PokeAPI via Ruby on Rails. Visit the API at https://pokeapi.co/docs/v2 for more documentation.

# API Base URL:
      BASE_URL = 'https://pokeapi.co/api/v2/'

# API Endpoints: 

## Get Pokemon:
            def pokemon_id(id)
                request(http_method: :get, endpoint: "pokemon/#{id}/")
            end

## Get Evolution:
            def pokemon_evolution(id)
                request(http_method: :get, endpoint: "evolution-chain/#{id}/")
            end
## Get Natures:
            def pokemon_natures(id)
                request(http_method: :get, endpoint: "nature/#{id}/")
            end
## Get Habitats:
            def pokemon_habitats(id)
                request(http_method: :get, endpoint: "pokemon-habitat/#{id}/")
            end
## Get Colors:
            def pokemon_colors(id)
                request(http_method: :get, endpoint: "pokemon-color/#{id}/")
            end

## Set up a request:
            private
            def request(http_method:, endpoint:, params: {})
                @response = connection.public_send(http_method, endpoint, params)
                parsed_response = JSON.parse(@response.body)
            end
## Set up a connection:
            def connection
                @connection ||= Faraday.new(API_ENDPOINT) do |f|
                f.request :url_encoded
                f.adapter Faraday.default_adapter
                f.headers['Authorization'] = "token #{@oauth_token}"
                if @oauth_token.present?
                    end
                    
                end
            end
        
