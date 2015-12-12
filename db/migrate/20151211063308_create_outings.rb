class CreateOutings < ActiveRecord::Migration
  def change
    create_table :outings do |t|
      t.text :activity
      t.string :date

      t.timestamps

    end
  end
end
