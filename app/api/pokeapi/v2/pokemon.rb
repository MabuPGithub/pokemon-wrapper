module Pokeapi
    module V2
        class Pokemon
            API_ENDPOINT = 'https://pokeapi.co/api/v2/'

            def pokemon_id(id)
                request(http_method: :get, endpoint: "pokemon/#{id}/")
            end

            def pokemon_evolution(id)
                request(http_method: :get, endpoint: "evolution-chain/#{id}/")
            end

            def pokemon_natures(id)
                request(http_method: :get, endpoint: "nature/#{id}/")
            end

            def pokemon_habitats(id)
                request(http_method: :get, endpoint: "pokemon-habitat/#{id}/")
            end

            def pokemon_colors(id)
                request(http_method: :get, endpoint: "pokemon-color/#{id}/")
            end

            private
            def request(http_method:, endpoint:, params: {})
                @response = connection.public_send(http_method, endpoint, params)
                parsed_response = JSON.parse(@response.body)
            end

            def connection
                @connection ||= Faraday.new(API_ENDPOINT) do |f|
                f.request :url_encoded
                f.adapter Faraday.default_adapter
                f.headers['Authorization'] = "token #{@oauth_token}"
                if @oauth_token.present?
                    end
                    
                end
            end
        end
    end
end