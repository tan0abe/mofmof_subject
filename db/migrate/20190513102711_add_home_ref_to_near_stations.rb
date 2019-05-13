class AddHomeRefToNearStations < ActiveRecord::Migration[5.0]
  def change
    add_reference :near_stations, :home, foreign_key: true
  end
end
