require 'spec_helper'

describe "Viewing a list of reviews" do
  
  it "shows the reviews for a specific stadium" do
    stadium1 = Stadium.create(stadium_attributes(name: "Iron Man"))
    review1 = stadium1.reviews.create(review_attributes(name: "Roger Ebert"))
    review2 = stadium1.reviews.create(review_attributes(name: "Gene Siskel"))


    stadium2 = Stadium.create(stadium_attributes(name: "Superman"))
    review3 = stadium2.reviews.create(review_attributes(name: "Peter Travers"))
    
    visit stadium_reviews_url(stadium1)
        
    expect(page).to have_text(review1.name)
    expect(page).to have_text(review2.name)
    expect(page).not_to have_text(review3.name)
  end
end