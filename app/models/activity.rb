class Activity < ApplicationRecord
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :category, presence: true, acceptance: { accept: ['eat', 'play', 'stay', 'go'] }
  validates :name, presence: true
  has_many :plans
  has_many :events, through: :plan
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
