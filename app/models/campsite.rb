class Campsite < ApplicationRecord
    #Attributes
    attribute :name, :string
    attribute :latitude, :float
    attribute :longitude, :float
    attribute :description, :text

    #Validators
    validates_presence_of :name,:latitude,:longitude

    #Relationships
    has_many :review, as: :reviewable

    #Modules
    include Reviewable
    
    #Methods
end
