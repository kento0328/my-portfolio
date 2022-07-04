class AddChildGenderToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :child_gender, :integer
  end
end
