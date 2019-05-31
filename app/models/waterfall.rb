class Waterfall < MapObject
    attribute :height
    
    validates_presence_of :height

    def info
        "#{name},#{latitude},#{longitude},#{description},#{height}"
    end
end
