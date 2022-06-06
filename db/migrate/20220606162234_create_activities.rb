class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :type
      t.string :address
      t.string :name
      t.boolean :booked, default: false
      t.boolean :saved, default: false
      t.text :details

      t.timestamps
    end
  end
end
