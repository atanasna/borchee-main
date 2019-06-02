class Hut < ApplicationRecord
    #Attributes
    attribute :name, :string
    attribute :altitude, :integer
    attribute :capacity, :integer
    attribute :latitude, :float
    attribute :longitude, :float
    attribute :description, :text
    

    #Validators
    validates_presence_of :name,:latitude,:longitude,:altitude
    validates_uniqueness_of :latitude, :longitude
    validates :latitude, :numericality => {:greater_than => -90, :less_than => 90}
    validates :longitude, :numericality => {:greater_than => -180, :less_than => 180}
    
    #Relationships
    has_many :review, as: :reviewable

    #Modules
    include Reviewable
    
    #Methods
    def info
        "#{name},#{latitude},#{longitude},#{description},#{altitude},#{capacity}"
    end
end
