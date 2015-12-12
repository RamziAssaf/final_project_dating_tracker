class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :user_id_1
      t.string :user_id_2

      t.timestamps

    end
  end
end
