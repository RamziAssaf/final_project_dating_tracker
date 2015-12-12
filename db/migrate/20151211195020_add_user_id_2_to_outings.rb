class AddUserId2ToOutings < ActiveRecord::Migration
  def change
    add_column :outings, :user_id_2, :string
  end
end
