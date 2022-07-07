class Like < ApplicationRecord
  belongs_to :post
  def update_likes_counter_for_user
    post.update(likes_counter: post.likes.count)
  end
end
