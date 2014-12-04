class AddFieldsToStadiums < ActiveRecord::Migration
  def change
    add_column :stadiums, :teamname, :string
    add_column :stadiums, :capacity, :integer
    add_column :stadiums, :centerfieldft, :integer
  end
end
