class Guest < ApplicationRecord
  validates :name, presence: true
  belongs_to :event

  has_one_attached :photo
end
