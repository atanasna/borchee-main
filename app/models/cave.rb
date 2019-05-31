class Cave < ApplicationRecord
    #Attributes
    attribute :name, :string
    attribute :latitude, :float
    attribute :longitude, :float
    attribute :description, :text
    attribute :depth, :integer
    attribute :lenght, :integer

    #Validators
    validates_presence_of :name,:latitude,:longitude

    #Relationships
    has_many :review, as: :reviewable
    
    #Modules
    include Reviewable
    
    #Methods
    def info
        "#{name},#{latitude},#{longitude},#{description},#{depth},#{lenght}"
    end

end
