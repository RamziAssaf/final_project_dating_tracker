class RemoveUserid2FromOutings < ActiveRecord::Migration
  def change
    remove_column :outings, :user_id_2, :string
  end
end
