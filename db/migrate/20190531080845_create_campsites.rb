class CreateCampsites < ActiveRecord::Migration[5.2]
    def change
        create_table :campsites do |t|
            t.string :name
            t.float :latitude
            t.float :longitude
            t.boolean :approved, :default => false
            t.text :description

            t.boolean :deleted, :default => false
            t.timestamps
        end
    end
end