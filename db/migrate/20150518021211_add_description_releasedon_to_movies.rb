class AddDescriptionReleasedonToMovies < ActiveRecord::Migration
  def change
  	add_column :movies,:description,:text,:after => :title
  	add_column :movies,:released_on,:date, :after =>:total_gross
  end
end
