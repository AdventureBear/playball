require 'spec_helper'

describe "navigating stadiums" do

	it "allows naviggation from detail page to listing page"  do

  stadium = Stadium.create(stadium_attributes)

	#stadium1 = Stadium.create(name: "Pensacola Bayfront Stadium",
  #                   city: "Pensacola",
  ##                    state: "FL",
   #                   centerfieldft: 405,
   #                   teamname: "Penasacola Blue Fish",
   #                   opening: "2008-04-15")

	visit stadium_url(stadium)


    click_link "All Stadiums"

    expect(current_path).to eq(stadiums_path)


	end



	it "allows navigation from listing page to detail page"  do

	#stadium1 = Stadium.create(name: "Pensacola Bayfront Stadium",
  #                    city: "Pensacola",
   #                   state: "FL",
   #                   centerfieldft: 405,
    #                  teamname: "Penasacola Blue Fish",
    #                  opening: "2008-04-15")
  stadium = Stadium.create(stadium_attributes)

	visit stadiums_url


    click_link stadium.name

    expect(current_path).to eq(stadium_path(stadium))


	end

end
