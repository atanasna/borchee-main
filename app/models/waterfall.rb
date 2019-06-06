class Waterfall < ApplicationRecord
    #Validators
    validates :name, presence: {message: "must not be empty"}
    validates :latitude, 
        presence: {message: "must not be empty"},
        numericality: {
            :greater_than => -90, 
            :less_than => 90, 
            :message  => "must be between -90 and 90"}
    validates :longitude, 
        presence: {message: "must not be empty"},
        numericality: {
            :greater_than => -180, 
            :less_than => 180, 
            :message  => "must be between -180 and 180"}

    #Relationships
    has_many :review, as: :reviewable
    has_many :images, as: :imageable

    #Modules
    include Reviewable
    
    #Methods
    def info
        "#{name},#{latitude},#{longitude},#{description},#{height}"
    end
end
