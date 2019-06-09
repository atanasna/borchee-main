class Hut < ApplicationRecord
    #Validators
    validates :name, 
        presence: {message: "Name must not be empty"},
        uniqueness: {message: "Name must be unique"}
    validates_with CoordinatesValidator
    validates :altitude,numericality: {
        allow_nil: true,
        only_integer: true,
        greater_than: 0,
        message:"Altityde must be a whole positive number"
    }
    validates :capacity,numericality: {
        allow_nil: true,
        only_integer: true,
        greater_than: 0,
        message:"Capacity must be a whole positive number"
    }

    #Relationships
    has_many :review, as: :reviewable
    has_many_attached :images

    #Modules
    include Reviewable
    
    #Methods
    def info
        "#{name},#{latitude},#{longitude},#{description},#{altitude},#{capacity}"
    end
end
