require 'spec_helper'

describe "A Stadium" do 

	it "requires a name"  do
	  stadium = Stadium.new(name: "")

	  stadium.valid?

	  expect(stadium.errors[:name].any?).to eq(true)
	end


	it "requires a city"  do
	  stadium = Stadium.new(city: "")

	  stadium.valid?

	  expect(stadium.errors[:city].any?).to eq(true)
	end



	it "requires a state"  do
	  stadium = Stadium.new(state: "")

	  stadium.valid?

	  expect(stadium.errors[:state].any?).to eq(true)
	end



it "accepts properly formatted website URLs" do
  sites = %w[http://example.com https://example]
  sites.each do |site|
    stadium = Stadium.new(website: site)
    stadium.valid?
    expect(stadium.errors[:website].any?).to eq(false)
  end
end

it "rejects improperly formatted website URLs" do
  sites = %w[example.com http examplehttp]
  sites.each do |site|
    stadium = Stadium.new(website: site)
    stadium.valid?
    expect(stadium.errors[:website].any?).to eq(true)
  end
end

it "accepts properly formatted image file names" do
  file_names = %w[e.png event.png event.jpg event.gif EVENT.GIF]
  file_names.each do |file_name|
    stadium = Stadium.new(image_file_name: file_name)
    stadium.valid?
    expect(stadium.errors[:image_file_name].any?).to eq(false)
  end
end

it "rejects improperly formatted image file names" do
  file_names = %w[event .jpg .png .gif event.pdf event.doc]
  file_names.each do |file_name|
    stadium = Stadium.new(image_file_name: file_name)
    stadium.valid?
    expect(stadium.errors[:image_file_name].any?).to eq(true)
  end
end

it "has many reviews" do
  stadium = Stadium.new(stadium_attributes)

  review1 = stadium.reviews.new(review_attributes)
  review2 = stadium.reviews.new(review_attributes)

  expect(stadium.reviews).to include(review1)
  expect(stadium.reviews).to include(review2)
end

it "deletes associated reviews" do
  stadium = Stadium.create(stadium_attributes)

  stadium.reviews.create(review_attributes)

  expect { 
    stadium.destroy
  }.to change(Review, :count).by(-1)
end


it "calculates the average number of review stars" do
  stadium = Stadium.create(stadium_attributes)

  stadium.reviews.create(review_attributes(stars: 1))
  stadium.reviews.create(review_attributes(stars: 3))
  stadium.reviews.create(review_attributes(stars: 5))
  
  expect(stadium.average_stars).to eq(3)
end


end