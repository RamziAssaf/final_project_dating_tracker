class AddUserId1ToOutings < ActiveRecord::Migration
  def change
    add_column :outings, :user_id_1, :string
  end
end
