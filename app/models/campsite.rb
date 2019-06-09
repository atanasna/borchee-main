class Campsite < ApplicationRecord
    #Validators
    validates :name, 
        presence: {message: "Name must not be empty"},
        uniqueness: {message: "Name must be unique"}
    validates_with CoordinatesValidator

    #Relationships
    has_many :review, as: :reviewable
    has_many_attached :images

    #Modules
    include Reviewable
    
    #Methods
    def info
        "#{name},#{latitude},#{longitude},#{description},#{height}"
    end
end
