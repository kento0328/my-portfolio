class CreateDisscussComments < ActiveRecord::Migration[7.0]
  def change
    create_table :disscuss_comments do |t|
      t.integer :discuss_id
      t.text :discuss_comment
      t.integer :user_id

      t.timestamps
    end
  end
end
