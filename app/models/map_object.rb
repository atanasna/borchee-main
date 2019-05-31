class MapObject < ApplicationRecord
    actable
    validates_presence_of :name, :latitude, :longitude

    def info
        "#{name},#{latitude},#{longitude},#{description}"
    end
end
