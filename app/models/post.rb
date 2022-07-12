class Post < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def update_counter()
    author.increment!(:posts_counter)
  end

  def recent_comments
    comments.includes(:author).order('created_at desc').limit(5)
  end
end
