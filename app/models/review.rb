class Review < ApplicationRecord
    #Attribute
    attribute :score, :integer
    attribute :comment, :text

    #Relationships
    belongs_to :reviewable, polymorphic: true

    #Validators
    validates :score, numericality: true
    validates_inclusion_of :score, :in => 1..10
    
end