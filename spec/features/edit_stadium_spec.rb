require 'spec_helper'

describe "Editing a stadium" do
  
  it "updates the stadium and shows the stadium's updated details" do
    stadium = Stadium.create(stadium_attributes)
    
    visit stadium_url(stadium)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_stadium_path(stadium))
        
    expect(find_field('Name').value).to eq(stadium.name)



    fill_in 'Name', with: "Updated Stadium Name"
    
    click_button 'Update Stadium'
    
    expect(current_path).to eq(stadium_path(stadium))

    expect(page).to have_text('Updated Stadium Name')
 

    expect(page).to have_text('Stadium successfully updated!')

  end
  

   
end