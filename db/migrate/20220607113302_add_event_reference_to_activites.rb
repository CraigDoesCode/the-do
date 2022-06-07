class AddEventReferenceToActivites < ActiveRecord::Migration[7.0]
  def change
    add_reference :activities, :event, null: false, foreign_key: true
  end
end
