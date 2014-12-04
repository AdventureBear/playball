require 'spec_helper'

describe "Creating a new Stadium" do
	
	it "creates a new stadium and shows the new Stadiums details" do 
    
   		visit stadiums_url()
    
    	click_link 'Add New Stadium'

    	expect(current_path).to eq(new_stadium_path)

#    	expect(current_path).to eq(new_movie_path)

    	fill_in "Name", with:  "New Stadium Name"
    	fill_in "City", with: "Pittsburgh"
    	fill_in "State", with: "PA"
    	fill_in "Teamname", with: "Pittsburgh Pirates"
    	fill_in "Centerfieldft", with: "405"
    	fill_in "Capacity", with: "42,000"
    	fill_in "Website", with:"http://www.testsite.com"
    	fill_in "Opening", with: (Time.new.year-10).to_s

        #***
        fill_in "Affiliate", with:  "Pro Team Affiliate"
        fill_in "League", with: "NorthEaster"
        fill_in "Closing", with: ""
        fill_in "Image file name", with: "stadium.jpg"

    	click_button 'Create Stadium'

    	expect(current_path).to eq(stadium_path(Stadium.last))

    	expect(page).to have_text('New Stadium Name')
	end
end