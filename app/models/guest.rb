class Guest < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  belongs_to :event

  has_one_attached :photo
end
