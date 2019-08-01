class Review < ApplicationRecord
    #Relationships
    belongs_to :reviewable, polymorphic: true

    #Validators
    validates :score, numericality: true
    validates_inclusion_of :score, :in => 1..10
    validates_presence_of :score, :comment
    validates_uniqueness_of :comment

    
end