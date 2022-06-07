class Event < ApplicationRecord
  validates :name, presence: true
  has_many :users
  has_many :guests
  has_many :activities
end
