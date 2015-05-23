module MoviesHelper
	def show_total(movies)
		pluralize(movies.size,"Movie")
	end
	def display_currency(movie)
		return 'Flop!' if movie.flop
		number_to_currency(movie.total_gross)
	end
	def display_usa_date(date)
		date.to_formatted_s(:long_ordinal)
	end
end
