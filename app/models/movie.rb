class Movie < ActiveRecord::Base
	def flop
		(total_gross.nil? || total_gross < 50000000 )
	end
end
