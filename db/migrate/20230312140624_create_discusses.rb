class CreateDiscusses < ActiveRecord::Migration[7.0]
  def change
    create_table :discusses do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.text :comment

      t.timestamps
    end
  end
end
