class CreateCaves < ActiveRecord::Migration[5.2]
    def change
        create_table :caves do |t|
            t.string :name
            t.float :latitude
            t.float :longitude
            t.text :description
            t.integer :depth
            t.integer :lenght

            t.timestamps
        end
    end
end