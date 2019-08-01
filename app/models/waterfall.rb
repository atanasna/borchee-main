class Waterfall < ApplicationRecord
    #Validators
    validates :name, 
        presence: {message: "Name must not be empty"},
        uniqueness: {message: "Name must be unique"}
    validates :height, numericality: {
        allow_nil: true,
        only_integer: true,
        greater_than: 0,
        message:"Height must be a whole positive number"
    }
    validates_with CoordinatesValidator
    validates_with ImagesValidator
    
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
