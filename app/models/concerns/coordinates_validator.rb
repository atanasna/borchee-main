class CoordinatesValidator < ActiveModel::Validator
  def validate(record)
    if record.latitude.nil?
        record.errors.add(:latitude, "Latitude must be defined")
    else
        if record.latitude > 90 or record.latitude <-90
            record.errors.add(:latitude, "Latitude must be between -90 and 90")
        end
    end
    if record.longitude.nil?
        record.errors.add(:longitude, "Latitude must be defined")
    else
        if record.longitude > 180 or record.longitude <-180
            record.errors.add(:latitude, "Longitude must be between -180 and 180")
        end
        
    end

    map_elements_in_close_lat = record.class.all.select{|db_rec| 
        db_rec.latitude<record.latitude+0.001 and 
        db_rec.latitude>record.latitude-0.001}

    if map_elements_in_close_lat.select{|db_rec| 
        db_rec.longitude<record.longitude+0.001 and 
        db_rec.longitude>record.longitude-0.001
    }.size != 0
        record.errors.add(:coordinates,"There is already an object of the same type in less than 100m")
    end
  end
end