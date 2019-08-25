def seedCampsites
    Campsite.create :name => "Eko", :latitude => 41.9583, :longitude => 24.1549, :approved => true
    Campsite.create :name => "Gradina", :latitude => 42.4196, :longitude => 27.6464, :approved => true
    Campsite.create :name => "Borovets", :latitude => 42.2660, :longitude => 23.6031, :approved => true

    # USA
    Campsite.create :name => "Silver Spring", :latitude => 46.993624, :longitude => -121.531909, :approved => true
    Campsite.create :name => "Huckleberry Mountain", :latitude => 42.876156, :longitude => -122.338403, :approved => true
    Campsite.create :name => "Point", :latitude => 44.139492, :longitude => -114.925626, :approved => true
    Campsite.create :name => "Deep Creek", :latitude => 37.359019, :longitude => -112.951616, :approved => true
    Campsite.create :name => "Rayan", :latitude => 33.982971, :longitude => -116.154750, :approved => true
    Campsite.create :name => "Desret View", :latitude => 36.038986, :longitude => -111.823099, :approved => true
    Campsite.create :name => "Goose Island", :latitude => 38.610858, :longitude => -109.558140, :approved => true
    Campsite.create :name => "Gothic", :latitude => 38.982097, :longitude => -107.007722, :approved => true
    Campsite.create :name => "Hopewell Lake", :latitude => 36.701050, :longitude => -106.235654, :approved => true
    Campsite.create :name => "Sage Creek", :latitude => 43.894113, :longitude => -102.413871, :approved => false
    Campsite.create :name => "Primitive Roadside", :latitude => 29.361719, :longitude => -103.290886, :approved => false
    Campsite.create :name => "Beaver Creek", :latitude => 46.575916, :longitude => -86.350588, :approved => false
    Campsite.create :name => "Greenbrier", :latitude => 35.744636, :longitude => -83.415260, :approved => false
    Campsite.create :name => "Assateague Island", :latitude => 38.208314, :longitude => -75.162208, :approved => false
    Campsite.create :name => "Blackwoods", :latitude => 44.313118, :longitude => -68.210899, :approved => false

    #Doesnt Exist
    Campsite.create :name => "222", :latitude => 37.969295, :longitude => -119.285115, :approved => true
    return nil
end

seedCampsites