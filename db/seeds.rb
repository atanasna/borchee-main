# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Hut.create :name => "Raj", :latitude => 42.696373, :longitude => 24.931110, :altitude => 1430
Hut.create :name => "Mazalat", :latitude => 42.75857, :longitude => 25.11479, :altitude => 1620
Hut.create :name => "Vihren", :latitude => 41.75670 , :longitude => 23.41638, :altitude => 1950

Waterfall.create :name => "Skakavitsa", :latitude => 42.221667, :longitude => 23.304722, :height => 70
Waterfall.create :name => "Raysko Praskalo", :latitude => 42.711936, :longitude => 24.924439, :height => 125
Waterfall.create :name => "Skaklya", :latitude => 43.035305, :longitude => 23.331007, :height => 80
Waterfall.create :name => "Krushuna Falls", :latitude => 43.243458, :longitude => 25.033075, :height => 20 

Cave.create :name => "Ledenica", :latitude => 43.204432, :longitude => 23.491103, :lenght => 320
Cave.create :name => "Snezhanka", :latitude => 42.004239, :longitude => 24.278699, :depth => 368

Review.create :score => 8, :comment => "Mnogo dobra hijichka", :reviewable => Hut.all.first
Review.create :score => 3, :comment => "Super zle", :reviewable => Hut.all.first
Review.create :score => 6, :comment => "Mojeshe toaletnata da raboti", :reviewable => Hut.all.first
Review.create :score => 6, :comment => "Nqma wifi", :reviewable => Hut.all.second
Review.create :score => 9, :comment => "Super magichnoto mqsto", :reviewable => Hut.all.second
Review.create :score => 1, :comment => "Mirisheshe na LAINA", :reviewable => Hut.all.last
Review.create :score => 10, :comment => "Ne moga poweche, tolkowa qka beshe", :reviewable => Hut.all.last
Review.create :score => 1, :comment => "ZLE ZLE ZLE", :reviewable => Hut.all.last