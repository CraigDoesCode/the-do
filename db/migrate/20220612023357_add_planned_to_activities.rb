class AddPlannedToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :planned, :boolean
  end
end
