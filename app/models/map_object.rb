class MapObject < ApplicationRecord
    attribute :name, :latitude, :longitude, :description
    
    validates_presence_of :name, :latitude, :longitude

    def info
        "#{name},#{latitude},#{longitude},#{description}"
    end
end
