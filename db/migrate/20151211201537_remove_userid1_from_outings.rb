class RemoveUserid1FromOutings < ActiveRecord::Migration
  def change
    remove_column :outings, :user_id_1, :string
  end
end
