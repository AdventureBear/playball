require 'spec_helper'

describe "Deleting a stadium" do 
  it "destroys the stadium and shows the stadium listing without the deleted stadium" do
    stadium = Stadium.create(stadium_attributes)

    visit stadium_path(stadium)
    
    click_link 'Delete'
    
    expect(current_path).to eq(stadiums_path)
    expect(page).not_to have_text(stadium.name)

      expect(page).to have_text("Stadium successfully deleted!")
  end
end