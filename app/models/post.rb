class Post < ApplicationRecordhas_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    
    def update_counter(count, user_id)
        User.find(user_id).update(posts_counter: count)
      end

end  