module Reviewable
    def reviews
        return review
    end

    def score
        score = 0 
        reviews.each do |r|
            score += r.score
        end
        if reviews.size == 0 or score == 0
            return 0
        else
            return (score.to_f/reviews.size).round(2)
        end
        
    end
end