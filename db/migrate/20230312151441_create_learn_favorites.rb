class CreateLearnFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :learn_favorites do |t|
      t.integer :user_id
      t.integer :learn_id

      t.timestamps
    end
  end
end
