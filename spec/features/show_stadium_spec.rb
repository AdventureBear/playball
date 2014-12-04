require 'spec_helper'

describe "Viewing an individual stadium" do

	it "Shows the stadium details"  do

	stadium = Stadium.create(stadium_attributes(centerfieldft: 550))

	#stadium1 = Stadium.create(name: "Pensacola Bayfront Stadium",
    #                  city: "Pensacola",
    #                  state: "FL",
    #                  centerfieldft: 405,
    #                  teamname: "Penasacola Blue Fish",
    #                  opening: "2008-04-15")

	visit stadium_url(stadium)
	#visit "http://example.com/stadiums/#{stadium.id}"


		expect(page).to have_text(stadium.name)

		expect(page).to have_text(stadium.city)
		expect(page).to have_text(stadium.state)
		expect(page).to have_text("550")
		expect(page).to have_text(stadium.teamname)
		expect(page).to have_text(stadium.opening)	
	###
		expect(page).to have_text(stadium.affiliate)
		expect(page).to have_text(stadium.league)
		expect(page).to have_text(stadium.closing)	
		expect(page).to have_selector("img[src$='#{stadium.image_file_name}']")
  
  end
end