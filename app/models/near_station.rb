class NearStation < ApplicationRecord
  belongs_to :home, inverse_of: :near_stations
end
