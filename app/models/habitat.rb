class Habitat
    def self.search(search)
        if search
            Pokeapi::V2::Pokemon.new.pokemon_habitats(search)
        end
    end
end