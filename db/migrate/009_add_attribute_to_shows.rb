class AddAttributeToShows < ActiveRecord::Migration[5.1]
    def change
        add_column :shows, :day, :text
        add_column :shows, :season, :text
    end
end
