class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts 


    def recent_posts
        self.posts.reverse[0..4]
    end 

    def featured_post
        self.posts.max_by{|post| post.likes}

    end

    def average_age
        self.bloggers.uniq.sum{|blogger| blogger.age} / self.bloggers.uniq.size.to_f
    end
end
