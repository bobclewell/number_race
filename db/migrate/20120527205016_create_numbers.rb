class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :number
      t.boolean :active_race
      t.integer :race_id

      t.timestamps
    end
  end
end
