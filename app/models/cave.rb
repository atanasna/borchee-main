class Cave < ApplicationRecord
    #Validators
    validates :name, 
        presence: {message: "Name must not be empty"},
        uniqueness: {message: "Name must be unique"}
    
    validates_with CoordinatesValidator
    validates :depth, numericality: {
        allow_nil: true,
        only_integer: true,
        greater_than: 0,
        message:"Depth must be a whole positive number"
    }
    validates :length, numericality: {
        allow_nil: true,
        only_integer: true,
        greater_than: 0,
        message:"Length must be a whole positive number"
    }
    #Relationships
    has_many :review, as: :reviewable
    has_many_attached :images
    
    #Modules
    include Reviewable
    
    #Methods
    def info
        "#{name},#{latitude},#{longitude},#{description},#{depth},#{lenght}"
    end

    def coordinates_limit
        
        errors.add(:latitude, "There is already a cave in less than 25 meters")

    end
end
