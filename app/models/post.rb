class Post < ApplicationRecord
    belongs_to :blogger 
    belongs_to :destination   
    
    validates :title, presence: true
    validates :content, length: {minimum: 100, too_short: "%{count} characters is the minimum allowed"}
    


    
end
