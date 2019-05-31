class Waterfall < ApplicationRecord
    #Attributes
    attribute :name, :string
    attribute :latitude, :float
    attribute :longitude, :float
    attribute :description, :text
    attribute :height, :integer
    
    #Validators
    validates_presence_of :name,:latitude,:longitude,:height

    #Relationships
    has_many :review, as: :reviewable

    #Modules
    include Reviewable
    
    #Methods
    def info
        "#{name},#{latitude},#{longitude},#{description},#{height}"
    end
end
