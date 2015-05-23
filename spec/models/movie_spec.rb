require 'rails_helper'
describe 'A Movie' do 
	it "is flop if total_gross is missing" do
		movie =  Movie.create(title: "Iron Man",
	                          rating: "PG-13",
	                          released_on: "2008-05-02")
		expect(movie.flop).to eq(true)
	end

	it "is flop if total_gross less than 50 M" do
		movie = Movie.create(title: "Iron Man",
	                          rating: "PG-13",
	                          total_gross: 49999999,
	                          description: "Tony Stark builds an armored suit to fight the throes of evil",
	                          released_on: "2008-05-02")
		expect(movie.flop).to eq(true)
	end
	it "is not flop if total_gross more than or equal 50 M" do
		movie = Movie.create(title: "Iron Man",
	                          rating: "PG-13",
	                          total_gross: 50000001,
	                          description: "Tony Stark builds an armored suit to fight the throes of evil",
	                          released_on: "2008-05-02")
		expect(movie.flop).to eq(false)
	end
end