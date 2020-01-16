class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    def totalLikes
       Post.all.where(blogger_id: self.id).collect{ |post| post[:likes]}.sum
    end

    def mostLikedPost
        Post.all.where(blogger_id: self.id).collect{ |post| post[:likes]}}.sum
    end
end
