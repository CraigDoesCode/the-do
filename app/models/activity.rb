class Activity < ApplicationRecord
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :category, presence: true, acceptance: { accept: ['eat', 'play', 'stay', 'go'] }
  validates :name, presence: true
  belongs_to :event
end
