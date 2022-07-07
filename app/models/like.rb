class Like < ApplicationRecord
  belongs_to :author
  def update_likes_counter_for_user
    post.update(likes_counter: post.likes.count)
  end
end
