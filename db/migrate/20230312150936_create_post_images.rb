class CreatePostImages < ActiveRecord::Migration[7.0]
  def change
    create_table :post_images do |t|
      t.integer :post_id
      t.integer :post_image

      t.timestamps
    end
  end
end
