class Activities < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :date
    remove_column :activities, :start_time
    remove_column :activities, :end_time
    remove_column :activities, :saved
    remove_column :activities, :event_id
    remove_column :activities, :planned
  end
end
