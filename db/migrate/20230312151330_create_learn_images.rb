class CreateLearnImages < ActiveRecord::Migration[7.0]
  def change
    create_table :learn_images do |t|
      t.integer :learn_id
      t.integer :learn_image

      t.timestamps
    end
  end
end
