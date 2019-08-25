def seedCaves    
    caves = Array.new
    #Bulgaria
    caves.push (Cave.new :name => "Ledenica", :latitude => 43.2044, :longitude => 23.4911, :approved => true, :depth => 21, :length => 320)
    caves.push (Cave.new :name => "Snezhanka", :latitude => 42.0042, :longitude => 24.2786, :approved => true, :depth => 18, :length => 368)
    caves.push (Cave.new :name => "Devetashka", :latitude => 43.2334, :longitude => 24.8854, :approved => true, :depth => 60, :length => 2442)
    caves.push (Cave.new :name => "Magurata", :latitude => 43.728000, :longitude => 22.582928, :approved => true, :depth => 56, :length => 2608)
    caves.push (Cave.new :name => "Devils Throat", :latitude => 41.615240, :longitude => 24.379490, :approved => true, :depth => 89, :length => 548)
    caves.push (Cave.new :name => "Prohodna", :latitude => 43.174999, :longitude => 24.073945, :approved => true, :depth => 56, :length => 262)
    caves.push (Cave.new :name => "Saeva Dupka", :latitude => 43.046781, :longitude => 24.185908, :approved => true, :depth => 40, :length => 210)
    caves.push (Cave.new :name => "Bacho Kiro", :latitude => 42.947338, :longitude => 25.430294, :approved => true, :depth => nil, :length => 3500)
    caves.push (Cave.new :name => "Yagodinska", :latitude => 41.628752, :longitude => 24.329674, :approved => true, :depth => 36, :length => 10000)
    caves.push (Cave.new :name => "Stalbicata", :latitude => 43.217653, :longitude => 24.973188, :approved => true, :depth => 48, :length => 145)

    #Cave.create :name => "Duhlata", :latitude => nil, :longitude => nil, :approved => true, :depth => 53, :length => 18200
    #Cave.create :name => "Syevas Hole", :latitude => nil, :longitude => nil, :approved => true, :depth => 18, :length => 210
    #Cave.create :name => "Uhlovitza", :latitude => nil, :longitude => nil, :approved => true, :depth => 25, :length => 330
    #Cave.create :name => "Temnas Hole", :latitude => nil, :longitude => nil, :approved => true, :depth => 35, :length => 9000
    #Cave.create :name => "Eagles Rock", :latitude => nil, :longitude => nil, :approved => true, :depth => 12, :length => 13437
    #Cave.create :name => "Venetsa", :latitude => nil, :longitude => nil, :approved => true, :depth => 26, :length => 220
    #Cave.create :name => "Kozarnika", :latitude => nil, :longitude => nil, :approved => true, :depth => 5, :length => 218
    #Cave.create :name => "Chudnite Mostove", :latitude => nil, :longitude => nil, :approved => true, :depth => 6, :length => 96
    #Cave.create :name => "Utrobata", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 22
    #Cave.create :name => "Zhiva Voda", :latitude => nil, :longitude => nil, :approved => true, :depth => 7, :length => 240
    #Cave.create :name => "Golqma Garvanica", :latitude => nil, :longitude => nil, :approved => true, :depth => 50, :length => 275
    #Cave.create :name => "Bojiyat Most.jpg", :latitude => nil, :longitude => nil, :approved => true, :depth => 3, :length => 443
    #Cave.create :name => "Sharena", :latitude => nil, :longitude => nil, :approved => true, :depth => 7, :length => 80
    #Cave.create :name => "Haramiiska", :latitude => nil, :longitude => nil, :approved => true, :depth => 50, :length => 495
    #Cave.create :name => "Morovitza", :latitude => nil, :longitude => nil, :approved => true, :depth => 105, :length => 3200
    #Cave.create :name => "Lepenitza", :latitude => nil, :longitude => nil, :approved => true, :depth => 10, :length => 1525
    #Cave.create :name => "Elata", :latitude => nil, :longitude => nil, :approved => true, :depth => 53, :length => 176
    #Cave.create :name => "Razhishka", :latitude => nil, :longitude => nil, :approved => true, :depth => 22, :length => 316
    #Cave.create :name => "Akademik", :latitude => nil, :longitude => nil, :approved => true, :depth => 15, :length => 350
    #Cave.create :name => "Raichos Hole", :latitude => nil, :longitude => nil, :approved => true, :depth => 377, :length => 3333
    #Cave.create :name => "Boninskas Hole", :latitude => nil, :longitude => nil, :approved => true, :depth => 22, :length => 4530
    #Cave.create :name => "Troyana", :latitude => nil, :longitude => nil, :approved => true, :depth => 45, :length => 2750
    #Cave.create :name => "Prikazna", :latitude => nil, :longitude => nil, :approved => true, :depth => 37, :length => 4782
    #Cave.create :name => "Balabanas Hole", :latitude => nil, :longitude => nil, :approved => true, :depth => 80, :length => 4800
    #Cave.create :name => "Mygliviya snyag", :latitude => nil, :longitude => nil, :approved => true, :depth => 146, :length => 3076
    #Cave.create :name => "Lucifer", :latitude => nil, :longitude => nil, :approved => true, :depth => 130, :length => 3200
    #Cave.create :name => "Vreloto", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 5280
    #Cave.create :name => "Emenska", :latitude => nil, :longitude => nil, :approved => true, :depth => 40, :length => 3113
    #Cave.create :name => "Andaka", :latitude => nil, :longitude => nil, :approved => true, :depth => 45, :length => 5000
    #Cave.create :name => "ponora", :latitude => nil, :longitude => nil, :approved => true, :depth => 46, :length => 3552
    #Cave.create :name => "Urushka Maara", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 1600
    #Cave.create :name => "Lednika", :latitude => nil, :longitude => nil, :approved => true, :depth => 242, :length => 1367
    #Cave.create :name => "Tizion", :latitude => nil, :longitude => nil, :approved => true, :depth => 320, :length => 3599
    #Cave.create :name => "Wodopada", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 1999
    #Cave.create :name => "Musinskata", :latitude => nil, :longitude => nil, :approved => true, :depth => 2, :length => 382
    #Cave.create :name => "Zidanka", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 400
    #Cave.create :name => "Vodna pesht", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 1016
    #Cave.create :name => "Kutlovitza", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 41
    #Cave.create :name => "Pleshovag", :latitude => nil, :longitude => nil, :approved => true, :depth => 102, :length => 742
    #Cave.create :name => "Vodni dupki", :latitude => nil, :longitude => nil, :approved => true, :depth => 2, :length => 813
    #Cave.create :name => "Sushitza", :latitude => nil, :longitude => nil, :approved => true, :depth => 1, :length => 31
    #Cave.create :name => "Babina dupka", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 35
    #Cave.create :name => "Kapchuka", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 18
    #Cave.create :name => "Momina dupka", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 122
    #Cave.create :name => "Mishin kamuk", :latitude => nil, :longitude => nil, :approved => true, :depth => 15, :length => 695
    #Cave.create :name => "Samuilitsa", :latitude => nil, :longitude => nil, :approved => true, :depth => 14, :length => 176
    #Cave.create :name => "Gortalovska", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 11
    #Cave.create :name => "Careva dupka", :latitude => nil, :longitude => nil, :approved => true, :depth => 0, :length => 27


    #USA
    caves.push (Cave.new :name => "Carlsbad Caverns", :latitude =>32.175278, :longitude => -104.443889, :approved => true, :depth => 490, :length => 48000)
    caves.push (Cave.new :name => "Wind Cave", :latitude =>43.55635, :longitude => -103.4786, :approved => true, :depth => nil, :length => 182)
    caves.push (Cave.new :name => "Antelope Canyon", :latitude =>36.952766, :longitude => -111.441268, :approved => true, :depth => 37, :length => 200)
    caves.push (Cave.new :name => "Blanchard Springs Caverns", :latitude =>35.963683, :longitude => -92.179328, :approved => true, :depth => nil, :length => nil)
    caves.push (Cave.new :name => "Cave of the Winds", :latitude =>43.083417, :longitude => -79.070991, :approved => true, :depth => 9, :length => 30)
    caves.push (Cave.new :name => "Craighead Caverns", :latitude =>35.535556, :longitude => -84.431111, :approved => true, :depth => nil, :length => nil)
    caves.push (Cave.new :name => "DeSoto Caverns", :latitude =>33.29681, :longitude => -86.30639, :approved => true, :depth => nil, :length => nil)
    caves.push (Cave.new :name => "Fantastic Caverns", :latitude =>37.287387, :longitude => -93.358501, :approved => true, :depth => nil, :length => nil)
    caves.push (Cave.new :name => "Jewel Cave", :latitude =>43.729444, :longitude => -103.829444, :approved => true, :depth => nil, :length => 322000)
    caves.push (Cave.new :name => "Kartchner Caverns", :latitude =>31.8375, :longitude => -110.347222, :approved => true, :depth => nil, :length => nil)
    caves.push (Cave.new :name => "Lava Beds", :latitude =>41.713889, :longitude => -121.508333, :approved => true, :depth => nil, :length => nil)
    caves.push (Cave.new :name => "Luray Caverns", :latitude =>38.664306, :longitude => -78.483806, :approved => true, :depth => nil, :length => nil)
    caves.push (Cave.new :name => "Makauwahi Cave", :latitude =>21.888333, :longitude => -159.418889, :approved => false, :depth => nil, :length => nil)
    caves.push (Cave.new :name => "Mammoth Cave", :latitude =>37.186944, :longitude => -86.101111, :approved => false, :depth => nil, :length => nil)
    caves.push (Cave.new :name => "Meramec Caverns", :latitude =>38.24127, :longitude => -91.09237, :approved => false, :depth => nil, :length => 7400)
    caves.push (Cave.new :name => "Natural Bridge Caverns", :latitude =>29.691989, :longitude => -98.34285, :approved => false, :depth => 70, :length => nil)
    caves.push (Cave.new :name => "Niagara Cave", :latitude =>43.514, :longitude => -92.0551, :approved => false, :depth => 60, :length => nil)
    caves.push (Cave.new :name => "Ohio Caverns", :latitude =>40.233333, :longitude => -83.683333, :approved => false, :depth => nil, :length => nil)

    # Doesn't Exist
    caves.each do |cave|
        Dir["db/pictures/cave/#{cave.name}/*"].each do |file|
            if file.match(/\.([j,J][p,P][g,G]|[p,P][n,N][g,G]|[b,B][m,M][p,P])/)
                extension = file.match(/\.([j,J][p,P][g,G]|[p,P][n,N][g,G]|[b,B][m,M][p,P])/i).captures[0]
                cave.images.attach(
                    io: File.open("#{file}"), 
                    filename: "#{cave.name.sub(" ","_")}_#{(1000+rand(8999))}.#{extension}", 
                    content_type: "image/#{extension}")
            end
        end
        cave.save
    end
    return nil
end

seedCaves