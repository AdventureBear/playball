class AddMoreFieldsToStadiums < ActiveRecord::Migration
  def change
    add_column :stadiums, :affiliate, :string
    add_column :stadiums, :closing, :date
    add_column :stadiums, :league, :string
    add_column :stadiums, :image_file_name, :string
  end
end
