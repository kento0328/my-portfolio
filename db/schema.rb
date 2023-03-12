# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_12_151441) do
  create_table "discusses", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "content"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disscuss_comments", force: :cascade do |t|
    t.integer "discuss_id"
    t.text "discuss_comment"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learn_comments", force: :cascade do |t|
    t.integer "learn_id"
    t.text "learn_comment"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learn_favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "learn_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learn_images", force: :cascade do |t|
    t.integer "learn_id"
    t.integer "learn_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learns", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "article"
    t.text "comment"
    t.integer "image"
    t.integer "favorite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_comments", force: :cascade do |t|
    t.integer "post_id"
    t.string "post_comment"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_images", force: :cascade do |t|
    t.integer "post_id"
    t.integer "post_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_likes", force: :cascade do |t|
    t.integer "post_id"
    t.integer "post_like"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "content"
    t.integer "image"
    t.integer "like"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
