class Home < ApplicationRecord
  has_many :near_stations, inverse_of: :home, dependent: :destroy
  accepts_nested_attributes_for :near_stations, allow_destroy: true
end
