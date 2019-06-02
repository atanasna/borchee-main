# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hut.create :name => "Raj", :latitude => 42.6963, :longitude => 24.9311, :altitude => 1430
Hut.create :name => "Mazalat", :latitude => 42.7585, :longitude => 25.1147, :altitude => 1620
Hut.create :name => "Vihren", :latitude => 41.7567 , :longitude => 23.4163, :altitude => 1950
Hut.create :name => "Triglav", :latitude => 42.7110 , :longitude => 25.0370, :altitude => 1950
Hut.create :name => "Tazha", :latitude => 42.7512 , :longitude => 24.9938, :altitude => 1950
Hut.create :name => "Uzana", :latitude => 42.7509 , :longitude => 25.2385, :altitude => 1240

Campsite.create :name => "Eko", :latitude => 41.9583, :longitude => 24.1549
Campsite.create :name => "Gradina", :latitude => 42.4196, :longitude => 27.6464
Campsite.create :name => "Borovets", :latitude => 42.2660, :longitude => 23.6031

Waterfall.create :name => "Skakavitsa", :latitude => 42.2216, :longitude => 23.3047, :height => 70
Waterfall.create :name => "Raysko Praskalo", :latitude => 42.7011, :longitude => 24.9254, :height => 125
Waterfall.create :name => "Skaklya", :latitude => 43.0353, :longitude => 23.3310, :height => 80
Waterfall.create :name => "Krushuna Falls", :latitude => 43.2434, :longitude => 25.0330, :height => 20 

Cave.create :name => "Ledenica", :latitude => 43.2044, :longitude => 23.4911, :lenght => 320
Cave.create :name => "Snezhanka", :latitude => 42.0042, :longitude => 24.2786, :depth => 368

Review.create :score => 8, :comment => "Mnogo dobra hijichka", :reviewable => Hut.all.first
Review.create :score => 3, :comment => "Super zle", :reviewable => Hut.all.first
Review.create :score => 6, :comment => "Mojeshe toaletnata da raboti", :reviewable => Hut.all.first
Review.create :score => 6, :comment => "Nqma wifi", :reviewable => Hut.all.second
Review.create :score => 9, :comment => "Super magichnoto mqsto", :reviewable => Hut.all.second
Review.create :score => 1, :comment => "Mirisheshe na LAINA", :reviewable => Hut.all.last
Review.create :score => 10, :comment => "Ne moga poweche, tolkowa qka beshe", :reviewable => Hut.all.last
Review.create :score => 1, :comment => "ZLE ZLE ZLE", :reviewable => Hut.all.last

Path.create(
    :latitudes=>[42.6963,42.706,42.729,42.745,42.7512], 
    :longitudes=>[24.9311,24.959,24.954,24.966,24.9938], 
    :time=>50, :lenght=>1.2, :color => "orange")
Path.create(
    :latitudes=>[42.6963,42.693,42.704,42.712,42.709,42.713,42.7110], 
    :longitudes=>[24.9311,24.941,25.003,25.019,25.022,25.026,25.0370], 
    :time=>110, :lenght=>3, :color => "green")
Path.create(
    :latitudes=>[42.7512,42.735,42.7110], 
    :longitudes=>[24.9938,24.994,25.0370], 
    :time=>160, :lenght=>4.5, :color => "blue")