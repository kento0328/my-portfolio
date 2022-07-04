class AddLabelToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :label, :integer
  end
end
