class AddSeasonsToShows < ActiveRecord::Migration
# class AddSeasonsToShow < ActiveRecord::Migration
    def change
       add_column :shows, :season, :string
    end

end
