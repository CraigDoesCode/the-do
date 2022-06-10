class AddImageToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :image, :string
  end
end
