class Pokemon
    def self.search(search)
        if search
            Pokeapi::V2::Pokemon.new.pokemon_id(search)
        end
    end
end