class CreatePostLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :post_likes do |t|
      t.integer :post_id
      t.integer :post_like
      t.integer :user_id

      t.timestamps
    end
  end
end
