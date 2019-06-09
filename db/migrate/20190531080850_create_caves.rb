class CreateCaves < ActiveRecord::Migration[5.2]
    def change
        create_table :caves do |t|
            t.string :name
            t.float :latitude
            t.float :longitude
            t.boolean :approved, :default => false
            t.text :description
            t.integer :depth
            t.integer :length

            t.boolean :deleted, :default => false
            t.timestamps
        end
    end
end