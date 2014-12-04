def stadium_attributes(overrides = {})
  {

	name: "Pensacola Bayfront Stadium",
    city: "Pensacola",
    state: "FL",
    centerfieldft: 405,
    teamname: "Penasacola Blue Fish",
    opening: "2008-04-15", 
    closing: "", 
    affiliate: "Pittsburgh Pirates", 
    league: "North Eastern",
    image_file_name: "stadium.jpg"
  }.merge(overrides)
end


def review_attributes(overrides = {})
  {
    name: "Roger Ebert",
    stars: 3,
    comment: "I laughed, I cried, I spilled my popcorn!"
  }.merge(overrides)
end