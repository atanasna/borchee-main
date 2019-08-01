class MapObject
    def self.all
        return Hut.all + Waterfall.all + Cave.all
    end
end