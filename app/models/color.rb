class Color
    def self.search(search)
        if search
            Pokeapi::V2::Pokemon.new.pokemon_colors(search)
        end
    end
end