class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  def update_comments_counter_for_post
    post.update(comments_counter: post.comments.count)
  end
end
