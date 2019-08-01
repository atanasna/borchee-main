class ImagesValidator < ActiveModel::Validator
    def validate(record)
        if not record.images.empty?
            puts "------------------------------------"
            puts record.images.size
            record.images.each do |image|
                if image.blob.byte_size > 512000
                    record.errors.add(:images, "#{image.blob.filename.to_s} must be less than 500kB")
                end
                if not image.content_type.to_s.match("image/")
                    record.errors.add(:images, "#{image.blob.filename.to_s} must be an image")
                end
            end
        end
    end
end