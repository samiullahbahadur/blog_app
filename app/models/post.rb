class Post < ApplicationRecordhas_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  def update_counter()
    author.increment!(:posts_counter)
  end

  def recent_comments
    comments.includes(:author).order('created_at desc').limit(5)
  end
end
