class Nature
    def self.search(search)
        if search
            Pokeapi::V2::Pokemon.new.pokemon_natures(search)
        end
    end
end