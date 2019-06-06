#Hut.create :name => "Mazalat", :latitude => 24.931110, :longitude => 42.696373, :altitude => 1430

class CreateHuts < ActiveRecord::Migration[5.2]
    def change
        create_table :huts do |t|
            t.string :name
            t.float :latitude
            t.float :longitude
            t.boolean :approved, :default => false
            t.integer :altitude
            t.integer :capacity
            t.text :description


            t.boolean :deleted, :default => false
            t.timestamps
        end
    end
end