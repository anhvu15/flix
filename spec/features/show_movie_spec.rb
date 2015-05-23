require 'rails_helper'
require 'spec_helper'
describe 'Show Detail Movie' do 
	it "Visit show page and have movie" do
		movie = Movie.create(title: "Iron Man",
                      rating: "PG-13",
                      total_gross: 318412101.00,
                      description: "Tony Stark builds an armored suit to fight the throes of evil",
                      released_on: "2008-05-02")
		visit movie_path movie
		expect(page).to have_text("Iron Man")
		expect(page).to have_text("PG-13")
		expect(page).to have_text("Tony Stark builds an armored suit to fight the throes of evil")
		#expect(page).to have_text("$318,412,101.00")
	end

	it "shows the total gross if the total gross exceeds $50M" do
		movie = Movie.create(title: "Iron Man",
                      rating: "PG-13",
                      total_gross: 60000000.00,
                      description: "Tony Stark builds an armored suit to fight the throes of evil",
                      released_on: "2008-05-02")
		visit movie_path(movie)
		expect(page).to have_text("$60,000,000")
	end

	it "shows 'Flop!' if the total gross is less than $50M" do
		movie = Movie.create(title: "Iron Man",
                      rating: "PG-13",
                      total_gross: 40000000.00,
                      description: "Tony Stark builds an armored suit to fight the throes of evil",
                      released_on: "2008-05-02")
		visit movie_path(movie)
		expect(page).to have_text("Flop!")
	end
end