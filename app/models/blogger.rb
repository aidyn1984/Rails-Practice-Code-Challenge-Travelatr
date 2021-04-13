class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts 

    validates_uniqueness_of :name
    
    validates :bio, length: { minimum: 30, too_short:  "%{count} characters is the minimum allowed" }
        
    validates :age, numericality: { greater_than: 0, only_integer: true }


    def total_likes
        self.posts.sum{|post| post.likes}
    end

    def featured_post
        self.posts.max_by {|post| post.likes}
    end

    def favorite_destinations
    
    end
end

