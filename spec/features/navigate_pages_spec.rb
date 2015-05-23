require 'rails_helper'
describe "Navigation Between List and Show"   do 
	
	it "Should navigate from show movie page to list movie page" do
		movie = Movie.create(title: "Iron Man",
                      rating: "PG-13",
                      total_gross: 318412101.00,
                      description: "Tony Stark builds an armored suit to fight the throes of evil",
                      released_on: "2008-05-02")
		visit movie_path movie
		click_link "All Movies"
		expect(current_path).to eq(movies_path)
	end

	it "Should navigate from show" do 
		movie = Movie.create(title: "Iron Man",
                      rating: "PG-13",
                      total_gross: 318412101.00,
                      description: "Tony Stark builds an armored suit to fight the throes of evil",
                      released_on: "2008-05-02")
		visit movies_path
		click_link movie.title
		expect(current_path).to eq(movie_path(movie))
	end
end