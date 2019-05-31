#Hut.create :name => "Mazalat", :latitude => 24.931110, :longitude => 42.696373, :altitude => 1430

class CreateHuts < ActiveRecord::Migration[5.2]
    def change
        create_table :huts do |t|
            t.string :name
            t.float :latitude
            t.float :longitude
            t.text :description
            t.integer :altitude

            t.timestamps
        end
    end
end