class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
        t.integer :score
        t.text :comment
        t.integer :reviewable_id
        t.string :reviewable_type

        t.boolean :deleted, :default => false
        t.timestamp
    end

    add_index :reviews, :reviewable_id
  end
end
