class CreateStadiums < ActiveRecord::Migration
  def change
    create_table :stadiums do |t|
      t.string :name
      t.string :city
      t.string :state
      t.date :opening

      t.timestamps
    end
  end
end
