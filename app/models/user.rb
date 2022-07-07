class User < ApplicationRecord
    def fetch_posts
        posts.order('created_at desc').limit(3)
      end
end