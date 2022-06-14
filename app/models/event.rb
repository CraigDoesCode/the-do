class Event < ApplicationRecord
  has_many :users
  has_many :guests
  has_many :plans
  has_many :activities, through: :plans
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
