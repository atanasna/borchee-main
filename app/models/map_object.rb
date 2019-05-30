class MapObject < ApplicationRecord
    actable

    def info
        "#{name},#{latitude},#{longitude},#{description}"
    end
    
end
