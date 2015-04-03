class RemoveLocationFromNode < ActiveRecord::Migration
  def change
    remove_column :nodes, :location, :string, limit: 50
    add_column :nodes, :latitude, :decimal, precision: 10, scale: 6
    add_column :nodes, :longitude, :decimal, precision: 10, scale: 6
  end
end
