class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :winner

      t.timestamps
    end
  end
end
