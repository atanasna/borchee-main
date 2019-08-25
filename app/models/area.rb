class Area < ApplicationRecord
    #Attributes
    serialize :latitudes, Array
    serialize :longitudes, Array

    #Validators
    validates_presence_of :latitudes, :longitudes

    #Relationships
    has_many :review, as: :reviewable

    #Modules
    include Reviewable

    #Callbacks
    after_initialize do |area|
    end
end
