class AddEventToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :event, foreign_key: true
  end
end
