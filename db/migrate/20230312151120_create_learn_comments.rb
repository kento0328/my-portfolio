class CreateLearnComments < ActiveRecord::Migration[7.0]
  def change
    create_table :learn_comments do |t|
      t.integer :learn_id
      t.text :learn_comment
      t.integer :user_id

      t.timestamps
    end
  end
end
