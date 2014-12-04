# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Stadium.create!([
	{
			name: "Pensacola Bayfront Stadium",
                      city: "Pensacola",
                      state: "FL",
                      centerfieldft: 405,
                      teamname: "Penasacola Blue Fish",
                      opening: "2008-04-15"
    },

{
			name: "Peoples Natural Gas Field",
                      city: "Curve",
                      state: "PA",
                      centerfieldft: 405,
                      teamname: "Altoona Curve",
                      opening: "2005-04-15"
    },
{

			name: "DeVault Memorial Stadium",
                      city: "DesMoine",
                      state: "ID",
                      centerfieldft: 395,
                      teamname: "Idaho Jackets",
                      opening: "2004-05-13"
    }
])


