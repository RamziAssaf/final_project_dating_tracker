class AddUserIdToOutings < ActiveRecord::Migration
  def change
    add_column :outings, :user_id, :integer
  end
end
