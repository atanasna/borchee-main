class Hut < ApplicationRecord
    #Attributes
    attribute :name, :string
    attribute :latitude, :float
    attribute :longitude, :float
    attribute :description, :text
    attribute :altitude, :integer

    #Validators
    validates_presence_of :name,:latitude,:longitude,:altitude

    #Relationships
    has_many :review, as: :reviewable

    #Modules
    include Reviewable
    
    #Methods
    def info
        "#{name},#{latitude},#{longitude},#{description},#{altitude}"
    end
end
