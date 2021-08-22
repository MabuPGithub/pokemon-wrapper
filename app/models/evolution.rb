class Evolution
    def self.search(search)
        if search
            Pokeapi::V2::Pokemon.new.pokemon_evolution(search)
        end
    end
end