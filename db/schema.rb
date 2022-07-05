


ActiveRecord::Schema[7.0].define(version: 2022_06_23_183559) do

  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "author_id"
    t.bigint "post_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_comments_on_author_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_likes_on_author_id"
    t.index ["post_id"], name: "index_likes_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "author_id"
    t.string "title"
    t.text "text"
    t.integer "comments_counter"
    t.integer "likes_counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_posts_on_author_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.text "bio"
    t.integer "posts_counter", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "posts", on_delete: :cascade
  add_foreign_key "comments", "users", column: "author_id", on_delete: :cascade
  add_foreign_key "likes", "posts", on_delete: :cascade
  add_foreign_key "likes", "users", column: "author_id", on_delete: :cascade
  add_foreign_key "posts", "users", column: "author_id", on_delete: :cascade
end
