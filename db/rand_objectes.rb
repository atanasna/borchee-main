
def gen(count)
    file_count = 0
    file = nil
    count.times do |i|
        if i%10000==0
            if file
                file.close
            end
            file_count += 1
            file = File.open("test_object_#{file_count}.rb", "w")
        end

        name = gen_name
        lat = gen_lat
        lon = gen_lon
        type = gen_type

        if type=="hut"
            file.puts "Hut.create :name => '#{name}', :latitude => #{lat}, :longitude => #{lon}, :approved => false, :altitude => #{rand(4000)}, :capacity => #{rand(100)}"
        end
        if type=="camp"
            file.puts "Campsite.create :name => '#{name}', :latitude => #{lat}, :longitude => #{lon}, :approved => false"
        end
        if type=="cave"
            file.puts "Cave.create :name => '#{name}', :latitude => #{lat}, :longitude => #{lon}, :approved => false, :depth => #{rand(500)}, :length => #{rand(100)}"
        end
        if type=="waterfall"
            file.puts "Waterfall.create :name => '#{name}', :latitude => #{lat}, :longitude => #{lon}, :approved => false, :height => #{rand(1000)}"
        end


    end
end

def gen_name
    alpha = ["a","b","c","d","f","g","h","i","e","o","u","k"]
    name = []
    10.times do
        name.push alpha[rand(12)]
    end

    return name.join
end

def gen_filename
    return "test_"+(100000+rand(899999)).to_s
end

def gen_lat
    return ((rand(89)+0.1*rand(10)+0.01*rand(10)+0.001*rand(10)+0.0001*rand(10))*[-1,1][rand(2)]).round(4)
end

def gen_lon
    return ((rand(179)+0.1*rand(10)+0.01*rand(10)+0.001*rand(10)+0.0001*rand(10))*[-1,1][rand(2)]).round(4)
end

def gen_type
    return ["hut","camp","cave","waterfall"][rand(4)]
end