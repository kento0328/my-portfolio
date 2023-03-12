class CreateLearns < ActiveRecord::Migration[7.0]
  def change
    create_table :learns do |t|
      t.integer :user_id
      t.string :title
      t.text :article
      t.text :comment
      t.integer :image
      t.integer :favorite

      t.timestamps
    end
  end
end
