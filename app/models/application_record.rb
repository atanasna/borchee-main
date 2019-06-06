class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
    
    def delete
        self.deleted = true
        self.save
    end
end
