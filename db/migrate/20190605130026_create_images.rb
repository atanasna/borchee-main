class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
        t.string :path
        t.integer :imageable_id
        t.string :imageable_type

        t.boolean :deleted, :default => false
        t.timestamp
    end

    add_index :images, :imageable_id
  end
end
