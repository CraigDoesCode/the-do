class Plan < ApplicationRecord
  belongs_to :event
  belongs_to :activity
end
