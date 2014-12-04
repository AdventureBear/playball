class AddUrlToStadiums < ActiveRecord::Migration
  def change
    add_column :stadiums, :website, :string
  end
end
