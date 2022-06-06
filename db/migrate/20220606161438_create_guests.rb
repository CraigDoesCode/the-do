class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.boolean :attending, default: false
      t.boolean :paid, default: false
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
