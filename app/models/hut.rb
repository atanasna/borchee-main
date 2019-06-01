class Hut < ApplicationRecord
    #Attributes
    attribute :name, :string
    attribute :latitude, :float
    attribute :longitude, :float
    attribute :description, :text
    attribute :altitude, :integer

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
        "#{name},#{latitude},#{longitude},#{description},#{altitude}"
    end
end
