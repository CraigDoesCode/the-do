class Event < ApplicationRecord

  has_many :users
  has_many :guests
  has_many :activities
end
