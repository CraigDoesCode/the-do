class Event < ApplicationRecord
  has_many :activities, dependent: :destroy
end
