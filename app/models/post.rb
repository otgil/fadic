class Post < ApplicationRecord
    belongs_to :star
    acts_as_votable
    
    def self.search(search)
        if search
            star = Star.find_by(who: search)
            if star
                self.where(star_id: star)
            else
                Post.all
            end
        else
            Post.all
        end
    end
end
