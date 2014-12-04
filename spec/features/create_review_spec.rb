require 'spec_helper'

describe "Creating a new review" do 
  it "saves the review" do    
    stadium = Stadium.create(stadium_attributes)

    visit stadium_url(stadium)
    
    click_link 'Write Review'
    
    expect(current_path).to eq(new_stadium_review_path(stadium))
    
    fill_in "Name", with: "Roger Ebert"
    #select 3, :from => "review_stars"
    choose "review_stars_3"
    fill_in "Comment", with: "I laughed, I cried, I spilled my popcorn!"
            
    click_button 'Post Review'
  
    expect(current_path).to eq(stadium_reviews_path(stadium))
    
    expect(page).to have_text("Thanks for your review!")
  end
  
  it "does not save the review if it's invalid" do
   stadium = Stadium.create(stadium_attributes)
    
    visit new_stadium_review_url(stadium)
    
    expect { 
      click_button 'Post Review' 
    }.not_to change(Review, :count)
        
    expect(page).to have_text('error')
  end
end