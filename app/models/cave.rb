class Cave < MapObject
    attribute :depth, :lenght
    
    def info
        "#{name},#{latitude},#{longitude},#{description},#{depth},#{lenght}"
    end
end
