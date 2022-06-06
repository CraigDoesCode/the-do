class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.date :start_date
      t.date :end_date
      t.string :location
      t.string :name

      t.timestamps
    end
  end
end
