class Activity < ApplicationRecord
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :type, presence: true,
  validates :address, presence: true
  validates :name, presence: true
  belongs_to :event
end
