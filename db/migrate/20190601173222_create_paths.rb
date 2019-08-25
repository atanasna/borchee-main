class CreatePaths < ActiveRecord::Migration[5.2]
  def change
    create_table :paths do |t|
        t.string :name
        t.boolean :approved, :default => false
        t.float :distance
        t.integer :time
        t.string :color
        t.text :description
        t.text :latitudes
        t.text :longitudes

        t.boolean :deleted, :default => false
        t.timestamps
    end
  end
end
