class CreateWaterfalls < ActiveRecord::Migration[5.2]
    def change
        create_table :waterfalls do |t|
            t.string :name
            t.float :latitude
            t.float :longitude
            t.text :description
            t.integer :height

            t.timestamps
        end
    end
end