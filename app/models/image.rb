class Image < ApplicationRecord
    #Relationships
    belongs_to :imageable, polymorphic: true

    #Validators
    validates_presence_of :path
    validates_uniqueness_of :path
end