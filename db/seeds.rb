# # User.create!([
# #   {name: "Tom", photo: "https://unsplash.com/photos/F_-0BxGuVvo", bio: "Teacher from Mexico.", posts_counter: 0},
# #   {name: "Lilly", photo: "https://unsplash.com/photos/F_-0BxGuVvo", bio: "Teacher from Poland.", posts_counter: 0}
# # ]),

# # Post.create!([
# #   {users_id: 1, title: 'Hello', text: 'This is my first post'},
# #   {users_id: 2, title: 'Hello2', text: 'This is my 2nd post'},
# #   {users_id: 1, title: 'Hello3', text: 'This is my 3rd post'},
# #   {users_id: 2, title: 'Hello4', text: 'This is my 4th post'}
# # ]),

# # Comment.create!([
# #   {posts_id: 1, users_id: 1, text: 'comment 1'}
# #   {posts_id: 1, users_id: 2, text: 'comment 2'}
# #   {posts_id: 1, users_id: 1, text: 'comment 3'}
# #   {posts_id: 1, users_id: 2, text: 'comment 4'}
# #   {posts_id: 1, users_id: 1, text: 'comment 5'}
# #   {posts_id: 1, users_id: 1, text: 'comment 6'}
# # ])

# # User.create!([
# #  { name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',posts_counter: 0 },
# #  { name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.', posts_counter: 0 }
# # ])

# # Post.create!([
# #                { author_id: 1, title: 'Hello', text: 'This is my first post' },
# #                { author_id: 2, title: 'Hello2', text: 'This is my 2nd post' },
# #                { author_id: 1, title: 'Hello3', text: 'This is my 3rd post' },
# #                { author_id: 2, title: 'Hello4', text: 'This is my 4th post' }
# #              ])
# Post.create!([
#                { author_id: 1, title: 'Hello', text: 'This is my first post' },
#                { author_id: 2, title: 'Hello2', text: 'This is my 2nd post' },
#                { author_id: 1, title: 'Hello3', text: 'This is my 3rd post' },
#                { author_id: 2, title: 'Hello4', text: 'This is my 4th post' }
#              ])

# # Comment.create!([
# #                   { post_id: 1, author_id: 1, text: 'comment 1' },
# #                   { post_id: 1, author_id: 2, text: 'comment 2' },
# #                   { post_id: 1, author_id: 1, text: 'comment 3' },
# #                   { post_id: 1, author_id: 2, text: 'comment 4' },
# #                   { post_id: 1, author_id: 1, text: 'comment 5' },
# #                   { post_id: 1, author_id: 1, text: 'comment 6' }
# #                 ])

# Comment.create!([
#                   { posts_id: 1, users_id: 1, text: 'comment 1' },
#                   { posts_id: 1, users_id: 2, text: 'comment 2' },
#                   { posts_id: 1, users_id: 1, text: 'comment 3' },
#                   { posts_id: 1, users_id: 2, text: 'comment 4' },
#                   { posts_id: 1, users_id: 1, text: 'comment 5' },
#                   { posts_id: 1, users_id: 1, text: 'comment 6' }
#                 ])

User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
Post.create(author_id: 1, title: 'Hello', text: 'This is my first post')
Comment.create(post_id: 1, author_id: 1, text: 'Hi Tom!')
# Like.create(post_id: 1, author_id: 1 )
