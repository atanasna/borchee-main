class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
        t.string :name
        t.boolean :approved, :default => false
        t.text :latitudes, :limit => 4294967295
        t.text :longitudes, :limit => 4294967295
        t.text :description

        t.boolean :deleted, :default => false
        t.timestamps
    end
  end
end
