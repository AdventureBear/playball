require 'spec_helper'

describe "Viewing the list of stadiums" do 

	it "shows the stadiums" do

stadium1 = Stadium.create(name: "Pensacola Bayfront Stadium",
                      city: "Pensacola",
                      state: "FL",
                      centerfieldft: 405,
                      teamname: "Penasacola Blue Fish",
                      opening: "2008-04-15")

stadium2 = Stadium.create(name: "Peoples Natural Gas Field",
                      city: "Curve",
                      state: "PA",
                      centerfieldft: 405,
                      teamname: "Altoona Curve",
                      opening: "2005-04-15")

stadium3 = Stadium.create(name: "DeVault Memorial Stadium",
                      city: "DesMoine",
                      state: "ID",
                      centerfieldft: 395,
                      teamname: "Idaho Jackets",
                      opening: "2004-05-13")



		visit stadiums_url

		expect(page).to have_text("3 Stadiums")
		expect(page).to have_text(stadium1.name)
		expect(page).to have_text(stadium2.name)
		expect(page).to have_text(stadium3.name)

		expect(page).to have_text(stadium3.city)
		expect(page).to have_text(stadium3.state)
		expect(page).to have_text(stadium3.centerfieldft)
		expect(page).to have_text(stadium3.teamname)
		expect(page).to have_text(stadium3.opening)


	end

#it "shows only the newest stadiums in the past 5 years" do
#  stadium = Stadium.create(stadium_attributes(opening: 6.years.ago))
  
#  visit stadiums_path
  
#  expect(page).not_to have_text(stadium.name)
#end








end