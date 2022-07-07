class Post < ApplicationRecordhas_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    


end  