class Event < ApplicationRecord
  has_many :users
  has_many :guests
  has_many :activities
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
