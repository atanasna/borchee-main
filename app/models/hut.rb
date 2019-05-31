class Hut < MapObject
    attribute :altitude

    validates_presence_of :altitude

    def info
        "#{name},#{latitude},#{longitude},#{description},#{altitude}"
    end
end
