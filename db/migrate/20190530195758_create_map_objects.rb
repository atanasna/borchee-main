class CreateMapObjects < ActiveRecord::Migration[5.2]
    def change
        create_table :map_objects do |t|
            t.string, :name
            t.float, :latitude
            t.float, :longitude
            t.text :description

            t.timestamps
        end
    end
end

# Human made Sites
class CreateHuts < ActiveRecord::Migration[5.2]
    def change
        create_table :huts do |t|
            t.string, :name
            t.float, :latitude
            t.float, :longitude
            t.text :description
            t.integer :altitude

            t.timestamps
        end
    end
end

class CreateCampsites < ActiveRecord::Migration[5.2]
    def change
        create_table :campsites do |t|
            t.string, :name
            t.float, :latitude
            t.float, :longitude
            t.text :description

            t.timestamps
        end
    end
end

# Natural Sites
class CreateCaves < ActiveRecord::Migration[5.2]
    def change
        create_table :caves do |t|
            t.string, :name
            t.float, :latitude
            t.float, :longitude
            t.text :description
            t.integer :depth
            t.integer :lenght

            t.timestamps
        end
    end
end

class CreateWaterfalls < ActiveRecord::Migration[5.2]
    def change
        create_table :waterfalls do |t|
            t.string, :name
            t.float, :latitude
            t.float, :longitude
            t.text :description
            t.integer :height
            
            t.timestamps
        end
    end
end




